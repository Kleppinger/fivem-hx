package fivem.server.db;

/**
	Internal Lua glue for calling into the `oxmysql` resource's exports.
	Not part of the public API — use `OxMysql` or `OxMysqlConnection` instead.

	oxmysql's exports aren't called with Lua colon-call syntax here; instead
	`exports.oxmysql` is indexed by method name and the resulting function is
	invoked directly with an explicit `nil` first argument. That's not a
	guess — it's the exact calling convention oxmysql's own
	`@oxmysql/lib/MySQL.lua` wrapper uses internally, verified against that
	file's source. `__hx_oxmysql_await` mirrors its `.await()` helper: wrap
	the callback in a promise and block the current Citizen coroutine on it,
	which is what lets DB calls read as synchronous Haxe code.
**/
class OxMysqlBridge {
	static function __init__():Void {
		untyped __lua__("
function __hx_oxmysql_call(method, query, parameters, cb)
	return exports.oxmysql[method](nil, query, parameters, cb, GET_CURRENT_RESOURCE_NAME(), false)
end

function __hx_oxmysql_await(method, query, parameters)
	local p = promise.new()
	exports.oxmysql[method](nil, query, parameters, function(result, error)
		if error then
			p:reject(error)
		else
			p:resolve(result)
		end
	end, GET_CURRENT_RESOURCE_NAME(), true)
	return Citizen.Await(p)
end
");
	}

	/**
		Fire-and-forget: invokes oxmysql's `method` export (`"query"`,
		`"insert"`, `"update"`, ...) and reports back through `callback` once
		it replies. Never blocks.
	**/
	public static function call(method:String, query:Dynamic, parameters:Dynamic, callback:(result:Dynamic, error:Dynamic) -> Void):Void {
		untyped __lua__("__hx_oxmysql_call({0}, {1}, {2}, {3})", method, query, parameters, callback);
	}

	/**
		Blocks the current Citizen coroutine until oxmysql's `method` export
		replies, and returns its result directly. Safe from event handlers,
		threads, and commands — i.e. virtually everywhere FiveM resource code
		runs — since all of those already run inside a coroutine. Throws (as
		a Lua error, catchable with a normal Haxe `try`/`catch`) if oxmysql
		reports an error.
	**/
	public static function await(method:String, query:Dynamic, parameters:Dynamic):Dynamic {
		return untyped __lua__("__hx_oxmysql_await({0}, {1}, {2})", method, query, parameters);
	}
}
