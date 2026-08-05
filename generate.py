import os
import re
import requests

# 1. Endpoints
NATIVES_URL = "https://runtime.fivem.net/doc/natives.json"
CFX_NATIVES_URL = "https://runtime.fivem.net/doc/natives_cfx.json"

print("Downloading live native databases...")
gta_data = requests.get(NATIVES_URL).json()
cfx_data = requests.get(CFX_NATIVES_URL).json()
all_namespaces = {**gta_data, **cfx_data}

TYPE_MAP = {
    "char*": "String", "char *": "String", "int": "Int", "Hash": "Int",
    "BOOL": "Bool", "float": "Float", "Vector3": "Dynamic", 
    "Any": "Dynamic", "Any*": "Dynamic", "func": "haxe.Constraints.Function",
    "object": "Dynamic", "long": "Int"
}

def clean_type(t):
    if not t: return "Void"
    return TYPE_MAP.get(t.strip(), "Dynamic")

def snake_to_camel(name):
    if not name: return "unknown"
    parts = name.lower().split('_')
    return parts[0] + ''.join(x.title() for x in parts[1:])

def to_lua_name(name):
    """The global a native is actually exposed under in FiveM's Lua runtime.

    This is NOT the SCREAMING_SNAKE_CASE name from the natives database.
    CitizenFX generates its Lua bindings with (ext/natives/codegen_out_lua.lua):

        native.name:lower()
                   :gsub('0x', 'n_0x')
                   :gsub('_(%a)', string.upper)
                   :gsub('(%a)(.+)', function(a, b) return a:upper() .. b end)

    and registers the result on the real _G. GET_CURRENT_RESOURCE_NAME is
    therefore reachable as _G.GetCurrentResourceName and not under its
    database name, which does not exist in the runtime at all.

    Ported exactly, including the two cases a naive PascalCase conversion gets
    wrong. Lua's %a matches letters only, so an underscore before a *digit*
    survives (GET_GROUND_Z_FOR_3D_COORD -> GetGroundZFor_3dCoord,
    ..._MODIFIER_2 -> ...Modifier_2), while a leading underscore is consumed
    because a letter follows it (_ADD_BLIP_FOR_AREA -> AddBlipForArea).

    Verified against citizen/scripting/lua/natives_server.lua from a live
    FXServer build: 360/360 server natives match.
    """
    if not name:
        return "unknown"
    text = name.lower().replace("0x", "n_0x")
    text = re.sub(r"_([A-Za-z])", lambda m: m.group(1).upper(), text)
    return re.sub(r"([A-Za-z])(.+)", lambda m: m.group(1).upper() + m.group(2), text, count=1)


def clean_ns(ns_name):
    """Normalize namespace (e.g. 'PED' -> 'Ped')"""
    return ns_name.strip().title()

# Haxe reserved words that natives.json sometimes uses as raw parameter names
# (e.g. `override`, `var`, `dynamic`); using them unescaped breaks the parser.
HAXE_KEYWORDS = {
    "override", "new", "default", "function", "class", "switch", "case", "in",
    "do", "cast", "try", "catch", "throw", "extends", "implements", "interface",
    "typedef", "enum", "abstract", "package", "import", "using", "untyped",
    "inline", "macro", "private", "public", "extern", "dynamic", "null", "true",
    "false", "this", "super", "var", "static", "if", "else", "for", "while",
    "break", "continue", "return", "final",
}

def clean_param_name(name):
    name = name or "arg"
    return f"{name}_" if name in HAXE_KEYWORDS else name

# Setup target environment trees
envs = ["shared", "server", "client"]
for env in envs:
    os.makedirs(f"src/fivem/{env}/natives", exist_ok=True)

# Data separation schemas
# Format: database[env][Namespace][native_hash] = details
db = { "shared": {}, "server": {}, "client": {} }

print("Analyzing contexts and namespaces...")
for ns, natives in all_namespaces.items():
    ns_clean = clean_ns(ns)
    
    for hash_id, details in natives.items():
        name = details.get("name", "")
        if not name or name.startswith("_0x"):
            continue
            
        # Determine execution context (apiset)
        # Standard GTA natives don't explicitly pass apiset, default to client/shared context
        apiset = details.get("apiset", "client") 
        
        # Simple heuristic mapping for target allocation
        if apiset == "server":
            target_env = "server"
        elif apiset == "shared" or apiset == "any":
            target_env = "shared"
        else:
            # Most base game GTA natives operate client side
            target_env = "client"
            
        if ns_clean not in db[target_env]:
            db[target_env][ns_clean] = {}
        # HIER KORRIGIERT: Ein [target_env] entfernt
        db[target_env][ns_clean][hash_id] = details

# client/server namespaces are merged with "shared" up front: the FiveM docs
# reuse namespace names (e.g. CFX) across apisets, so without merging here,
# server.natives.Cfx and shared.natives.Cfx would collide as two same-named
# classes and Natives.hx could only expose one of them.
for env in ("server", "client"):
    for ns, natives in db["shared"].items():
        merged = db[env].setdefault(ns, {})
        merged.update({**natives, **merged})

# Write the actual native sub-files
def generate_sub_classes(env_name):
    for ns, natives in db[env_name].items():
        code = f"package fivem.{env_name}.natives;\n\n"
        code += '@:native("_G")\nextern class ' + ns + " {\n"

        for hash_id, details in natives.items():
            haxe_name = snake_to_camel(details["name"])
            lua_name = to_lua_name(details["name"])

            # Format documentation. Nested /* */ sequences (e.g. inline Lua examples
            # in the source docs) would otherwise prematurely close the doc comment
            # and break compilation, so neutralize them before embedding.
            desc = details.get("description", "No docs.")
            desc = desc.replace("/*", "/ *").replace("*/", "* /")
            desc = desc.replace("\n", "\n\t * ")
            code += f"\t/**\n\t * {desc}\n\t */\n"

            # Build params
            params = [f"{clean_param_name(p.get('name'))}:{clean_type(p.get('type'))}" for p in details.get("params", [])]
            # Handle list array returns
            ret = "Dynamic" if isinstance(details.get("results"), list) else clean_type(details.get("results"))

            code += f'\t@:native("{lua_name}")\n'
            code += f'\tstatic function {haxe_name}({", ".join(params)}):{ret};\n\n'

        code += "}\n"
        with open(f"src/fivem/{env_name}/natives/{ns}.hx", "w", encoding="utf-8") as f:
            f.write(code)

# Execute sub file splits
for env in envs:
    generate_sub_classes(env)

# 3. Create the top-level main entry pointers (Natives.hx)
def write_main_entry(env_name, categories):
    code = f"package fivem.{env_name};\n\n"
    # Generate typdefs pointing to the sub-classes to make them accessible via Natives.Category
    code += "class Natives {\n"
    for cat in sorted(categories):
        code += f"\tpublic static var {cat[0].lower() + cat[1:]} = fivem.{env_name}.natives.{cat};\n"
    code += "}\n"

    with open(f"src/fivem/{env_name}/Natives.hx", "w", encoding="utf-8") as f:
        f.write(code)

write_main_entry("shared", db["shared"].keys())
write_main_entry("server", db["server"].keys())
write_main_entry("client", db["client"].keys())

print("Modular generational setup complete!")