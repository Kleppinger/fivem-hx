package fivem.shared.natives;

@:native("_G")
extern class Cfx {
	/**
	 * Adds a listener for Console Variable changes.
	 * 
	 * The function called expects to match the following signature:
	 * 
	 * ```ts
	 * function ConVarChangeListener(conVarName: string, reserved: any);
	 * ```
	 * 
	 * *   **conVarName**: The ConVar that changed.
	 * *   **reserved**: Currently unused.
	 */
	@:native("ADD_CONVAR_CHANGE_LISTENER")
	static function addConvarChangeListener(conVarFilter:String, handler:haxe.Constraints.Function):Int;

	/**
	 * Adds a handler for changes to a state bag.
	 * 
	 * The function called expects to match the following signature:
	 * 
	 * ```ts
	 * function StateBagChangeHandler(bagName: string, key: string, value: any, reserved: number, replicated: boolean);
	 * ```
	 * 
	 * *   **bagName**: The internal bag ID for the state bag which changed. This is usually `player:Source`, `entity:NetID`
	 *     or `localEntity:Handle`.
	 * *   **key**: The changed key.
	 * *   **value**: The new value stored at key. The old value is still stored in the state bag at the time this callback executes.
	 * *   **reserved**: Currently unused.
	 * *   **replicated**: Whether the set is meant to be replicated.
	 * 
	 * At this time, the change handler can't opt to reject changes.
	 * 
	 * If bagName refers to an entity, use [GET_ENTITY_FROM_STATE_BAG_NAME](#\_0x4BDF1867) to get the entity handle
	 * If bagName refers to a player, use [GET_PLAYER_FROM_STATE_BAG_NAME](#\_0xA56135E0) to get the player handle
	 */
	@:native("ADD_STATE_BAG_CHANGE_HANDLER")
	static function addStateBagChangeHandler(keyFilter:String, bagFilter:String, handler:haxe.Constraints.Function):Int;

	/**
	 * 
	 */
	@:native("DOES_TRAIN_STOP_AT_STATIONS")
	static function doesTrainStopAtStations(train:Dynamic):Bool;

	/**
	 * Cancels the currently executing event.
	 */
	@:native("CANCEL_EVENT")
	static function cancelEvent():Dynamic;

	/**
	 * 
	 */
	@:native("DELETE_FUNCTION_REFERENCE")
	static function deleteFunctionReference(referenceIdentity:String):Dynamic;

	/**
	 * 
	 */
	@:native("DUPLICATE_FUNCTION_REFERENCE")
	static function duplicateFunctionReference(referenceIdentity:String):String;

	/**
	 * Internal function for ensuring an entity has a state bag.
	 */
	@:native("ENSURE_ENTITY_STATE_BAG")
	static function ensureEntityStateBag(entity:Dynamic):Dynamic;

	/**
	 * Depending on your use case you may need to use `add_acl resource.<your_resource_name> command.<command_name> allow` to use this native in your resource.
	 */
	@:native("EXECUTE_COMMAND")
	static function executeCommand(commandString:String):Dynamic;

	/**
	 * Returns the name of the currently executing resource.
	 */
	@:native("GET_CURRENT_RESOURCE_NAME")
	static function getCurrentResourceName():String;

	/**
	 * Can be used to get a console variable of type `char*`, for example a string.
	 */
	@:native("GET_CONVAR")
	static function getConvar(varName:String, default_:String):String;

	/**
	 * ### Supported types
	 * 
	 * *   \[1] : Peds (including animals) and players.
	 * *   \[2] : Vehicles.
	 * *   \[3] : Objects (props), doors, and projectiles.
	 * 
	 * ### Coordinates need to be send unpacked (x,y,z)
	 * 
	 * ```lua
	 * 
	 * -- Define the allowed model hashes
	 * local allowedModelHashes = { GetHashKey("p_crate03x"), GetHashKey("p_crate22x") }
	 * 
	 * -- Get the player's current coordinates
	 * local playerCoords = GetEntityCoords(PlayerPedId())
	 * 
	 * -- Retrieve all entities of type Object (type 3) within a radius of 10.0 units
	 * -- that match the allowed model hashes
	 * -- and sort output entities by distance
	 * local entities = GetEntitiesInRadius(playerCoords.x, playerCoords.y, playerCoords.z, 10.0, 3, true, allowedModelHashes)
	 * 
	 * -- Iterate through the list of entities and print their ids
	 * for i = 1, #entities do
	 *     local entity = entities[i]
	 *     print(entity)
	 * end
	 * 
	 * ```
	 */
	@:native("GET_ENTITIES_IN_RADIUS")
	static function getEntitiesInRadius(x:Float, y:Float, z:Float, radius:Float, entityType:Int, sortByDistance:Bool, models:Dynamic):Dynamic;

	/**
	 * Returns the entity handle for the specified state bag name. For use with [ADD_STATE_BAG_CHANGE_HANDLER](#\_0x5BA35AAF).
	 */
	@:native("GET_ENTITY_FROM_STATE_BAG_NAME")
	static function getEntityFromStateBagName(bagName:String):Dynamic;

	/**
	 * Can be used to get a console variable casted back to `bool`.
	 */
	@:native("GET_CONVAR_BOOL")
	static function getConvarBool(varName:String, defaultValue:Bool):Bool;

	/**
	 * Can be used to get a console variable casted back to `int` (an integer value).
	 */
	@:native("GET_CONVAR_INT")
	static function getConvarInt(varName:String, default_:Int):Int;

	/**
	 * An internal function for converting a stack trace object to a string.
	 */
	@:native("FORMAT_STACK_TRACE")
	static function formatStackTrace(traceData:Dynamic):String;

	/**
	 * Returns the internal build number of the current game being executed.
	 * 
	 * Possible values:
	 * 
	 * *   FiveM
	 *     *   1604
	 *     *   2060
	 *     *   2189
	 *     *   2372
	 *     *   2545
	 *     *   2612
	 *     *   2699
	 *     *   2802
	 *     *   2944
	 *     *   3095
	 *     *   3258
	 *     *   3323
	 *     *   3407
	 *     *   3570
	 *     *   3751
	 *     *   3788
	 * *   RedM
	 *     *   1311
	 *     *   1355
	 *     *   1436
	 *     *   1491
	 * *   LibertyM
	 *     *   43
	 * *   FXServer
	 *     *   0
	 */
	@:native("GET_GAME_BUILD_NUMBER")
	static function getGameBuildNumber():Int;

	/**
	 * This will have floating point inaccuracy.
	 */
	@:native("GET_CONVAR_FLOAT")
	static function getConvarFloat(varName:String, defaultValue:Float):Float;

	/**
	 * Returns the current game being executed.
	 * 
	 * Possible values:
	 * 
	 * | Return value | Meaning                        |
	 * | ------------ | ------------------------------ |
	 * | `fxserver`   | Server-side code ('Duplicity') |
	 * | `fivem`      | FiveM for GTA V                |
	 * | `libertym`   | LibertyM for GTA IV            |
	 * | `redm`       | RedM for Red Dead Redemption 2 |
	 */
	@:native("GET_GAME_NAME")
	static function getGameName():String;

	/**
	 * Returns a list of entity handles (script GUID) for all entities in the specified pool - the data returned is an array as
	 * follows:
	 * 
	 * ```json
	 * [ 770, 1026, 1282, 1538, 1794, 2050, 2306, 2562, 2818, 3074, 3330, 3586, 3842, 4098, 4354, 4610, ...]
	 * ```
	 * 
	 * ### Supported pools
	 * 
	 * *   `CPed`: Peds (including animals) and players.
	 * *   `CObject`: Objects (props), doors, and projectiles.
	 * *   `CNetObject`: Networked objects
	 * *   `CVehicle`: Vehicles.
	 * *   `CPickup`: Pickups.
	 */
	@:native("GET_GAME_POOL")
	static function getGamePool(poolName:String):Dynamic;

	/**
	 * 
	 */
	@:native("GET_INVOKING_RESOURCE")
	static function getInvokingResource():String;

	/**
	 * Gets the amount of metadata values with the specified key existing in the specified resource's manifest.
	 * See also: [Resource manifest](https://docs.fivem.net/docs/scripting-reference/resource-manifest/)
	 */
	@:native("GET_NUM_RESOURCE_METADATA")
	static function getNumResourceMetadata(resourceName:String, metadataKey:String):Int;

	/**
	 * On the server this will return the players source, on the client it will return the player handle.
	 */
	@:native("GET_PLAYER_FROM_STATE_BAG_NAME")
	static function getPlayerFromStateBagName(bagName:String):Int;

	/**
	 * 
	 */
	@:native("GET_NUM_RESOURCES")
	static function getNumResources():Int;

	/**
	 * 
	 */
	@:native("GET_INSTANCE_ID")
	static function getInstanceId():Int;

	/**
	 * 
	 */
	@:native("GET_RESOURCE_BY_FIND_INDEX")
	static function getResourceByFindIndex(findIndex:Int):String;

	/**
	 * Returns all commands that are registered in the command system.
	 * The data returned adheres to the following layout:
	 * 
	 * ```
	 * [
	 * {
	 * "name": "cmdlist",
	 * "resource": "resource",
	 * "arity" = -1,
	 * },
	 * {
	 * "name": "command1"
	 * "resource": "resource_2",
	 * "arity" = -1,
	 * }
	 * ]
	 * ```
	 */
	@:native("GET_REGISTERED_COMMANDS")
	static function getRegisteredCommands():Dynamic;

	/**
	 * A getter for [SET_PLAYER_WEAPON_DEFENSE_MODIFIER](#\_0x2D83BC011CA14A3C).
	 */
	@:native("GET_PLAYER_WEAPON_DEFENSE_MODIFIER")
	static function getPlayerWeaponDefenseModifier(playerId:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_TRAIN_STATE")
	static function getTrainState(train:Dynamic):Int;

	/**
	 * A getter for [SET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER](#\_0x4A3DC7ECCC321032).
	 */
	@:native("GET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER")
	static function getPlayerMeleeWeaponDamageModifier(playerId:Dynamic):Float;

	/**
	 * A getter for [SET_PLAYER_WEAPON_DAMAGE_MODIFIER](#\_0xCE07B9F7817AADA3).
	 */
	@:native("GET_PLAYER_WEAPON_DAMAGE_MODIFIER")
	static function getPlayerWeaponDamageModifier(playerId:Dynamic):Float;

	/**
	 * Returns the value of a state bag key.
	 */
	@:native("GET_STATE_BAG_VALUE")
	static function getStateBagValue(bagName:String, key:String):Dynamic;

	/**
	 * 
	 */
	@:native("GET_TRAIN_TRACK_INDEX")
	static function getTrainTrackIndex(train:Dynamic):Int;

	/**
	 * Returns all commands registered by the specified resource.
	 * The data returned adheres to the following layout:
	 * 
	 * ```
	 * [
	 * {
	 * "name": "cmdlist",
	 * "resource": "example_resource",
	 * "arity" = -1,
	 * },
	 * {
	 * "name": "command1"
	 * "resource": "example_resource2",
	 * "arity" = -1,
	 * }
	 * ]
	 * ```
	 */
	@:native("GET_RESOURCE_COMMANDS")
	static function getResourceCommands(resource:String):Dynamic;

	/**
	 * A getter for [\_SET_PLAYER_WEAPON_DEFENSE_MODIFIER\_2](#\_0xBCFDE9EDE4CF27DC).
	 */
	@:native("GET_PLAYER_WEAPON_DEFENSE_MODIFIER_2")
	static function getPlayerWeaponDefenseModifier2(playerId:Dynamic):Float;

	/**
	 * Gets the metadata value at a specified key/index from a resource's manifest.
	 * See also: [Resource manifest](https://docs.fivem.net/docs/scripting-reference/resource-manifest/)
	 */
	@:native("GET_RESOURCE_METADATA")
	static function getResourceMetadata(resourceName:String, metadataKey:String, index:Int):String;

	/**
	 * Returns the current state of the specified resource.
	 */
	@:native("GET_RESOURCE_STATE")
	static function getResourceState(resourceName:String):String;

	/**
	 * 
	 */
	@:native("GET_STATE_BAG_KEYS")
	static function getStateBagKeys(bagName:String):Dynamic;

	/**
	 * Gets the direction the train is facing
	 */
	@:native("GET_TRAIN_DIRECTION")
	static function getTrainDirection(train:Dynamic):Bool;

	/**
	 * Returns the type of the passed vehicle.
	 * 
	 * For client scripts, reference the more detailed [GET_VEHICLE_TYPE_RAW](#\_0xDE73BC10) native.
	 * 
	 * ### Vehicle types
	 * 
	 * *   automobile
	 * *   bike
	 * *   boat
	 * *   heli
	 * *   plane
	 * *   submarine
	 * *   trailer
	 * *   train
	 */
	@:native("GET_VEHICLE_TYPE")
	static function getVehicleType(vehicle:Dynamic):String;

	/**
	 * Gets the trains desired speed.
	 */
	@:native("GET_TRAIN_CRUISE_SPEED")
	static function getTrainCruiseSpeed(train:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_STEERING_ANGLE")
	static function getVehicleSteeringAngle(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GET_VEHICLE_HANDBRAKE")
	static function getVehicleHandbrake(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IS_ACE_ALLOWED")
	static function isAceAllowed(object:String):Bool;

	/**
	 * A getter for [FREEZE_ENTITY_POSITION](#\_0x428CA6DBD1094446).
	 */
	@:native("IS_ENTITY_POSITION_FROZEN")
	static function isEntityPositionFrozen(entity:Dynamic):Dynamic;

	/**
	 * Gets whether or not this is the CitizenFX server.
	 */
	@:native("IS_DUPLICITY_VERSION")
	static function isDuplicityVersion():Bool;

	/**
	 * 
	 */
	@:native("IS_VEHICLE_ENGINE_STARTING")
	static function isVehicleEngineStarting(vehicle:Dynamic):Bool;

	/**
	 * Reads the contents of a text file in a specified resource.
	 * If executed on the client, this file has to be included in `files` in the resource manifest.
	 * Example: `local data = LoadResourceFile("devtools", "data.json")`
	 */
	@:native("LOAD_RESOURCE_FILE")
	static function loadResourceFile(resourceName:String, fileName:String):String;

	/**
	 * 
	 */
	@:native("IS_PRINCIPAL_ACE_ALLOWED")
	static function isPrincipalAceAllowed(principal:String, object:String):Bool;

	/**
	 * Scope exit for profiler.
	 */
	@:native("PROFILER_EXIT_SCOPE")
	static function profilerExitScope():Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_CONVAR_CHANGE_LISTENER")
	static function removeConvarChangeListener(cookie:Int):Dynamic;

	/**
	 * Registered commands can be executed by entering them in the client console (this works for client side and server side registered commands). Or by entering them in the server console/through an RCON client (only works for server side registered commands). Or if you use a supported chat resource, like the default one provided in the cfx-server-data repository, then you can enter the command in chat by prefixing it with a `/`.
	 * 
	 * Commands registered using this function can also be executed by resources, using the [`ExecuteCommand` native](#\_0x561C060B).
	 * 
	 * The restricted bool is not used on the client side. Permissions can only be checked on the server side, so if you want to limit your command with an ace permission automatically, make it a server command (by registering it in a server script).
	 * 
	 * **Example result**:
	 * 
	 * ![](https://i.imgur.com/TaCnG09.png)
	 */
	@:native("REGISTER_COMMAND")
	static function registerCommand(commandName:String, handler:haxe.Constraints.Function, restricted:Bool):Dynamic;

	/**
	 * Returns the owner ID of the specified entity.
	 */
	@:native("NETWORK_GET_ENTITY_OWNER")
	static function networkGetEntityOwner(entity:Dynamic):Int;

	/**
	 * Returns true if the profiler is active.
	 */
	@:native("PROFILER_IS_RECORDING")
	static function profilerIsRecording():Bool;

	/**
	 * Scope entry for profiler.
	 */
	@:native("PROFILER_ENTER_SCOPE")
	static function profilerEnterScope(scopeName:String):Dynamic;

	/**
	 * An internal function which allows the current resource's HLL script runtimes to receive state for the specified event.
	 */
	@:native("REGISTER_RESOURCE_AS_EVENT_HANDLER")
	static function registerResourceAsEventHandler(eventName:String):Dynamic;

	/**
	 * **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
	 * 
	 * Removes a handler for changes to a state bag.
	 */
	@:native("REMOVE_STATE_BAG_CHANGE_HANDLER")
	static function removeStateBagChangeHandler(cookie:Int):Dynamic;

	/**
	 * Internal function for setting a state bag value.
	 */
	@:native("SET_STATE_BAG_VALUE")
	static function setStateBagValue(bagName:String, keyName:String, valueData:String, valueLength:Int, replicated:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("STATE_BAG_HAS_KEY")
	static function stateBagHasKey(bagName:String, key:String):Dynamic;

	/**
	 * The backing function for TriggerEvent.
	 */
	@:native("TRIGGER_EVENT_INTERNAL")
	static function triggerEventInternal(eventName:String, eventPayload:String, payloadLength:Int):Dynamic;

	/**
	 * Returns whether or not the currently executing event was canceled.
	 */
	@:native("WAS_EVENT_CANCELED")
	static function wasEventCanceled():Bool;

	/**
	 * Nonsynchronous [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
	 */
	@:native("SET_RESOURCE_KVP_FLOAT_NO_SYNC")
	static function setResourceKvpFloatNoSync(key:String, value:Float):Dynamic;

	/**
	 * A getter for [SET_RESOURCE_KVP](#\_0x21C7A35B).
	 */
	@:native("GET_RESOURCE_KVP_STRING")
	static function getResourceKvpString(key:String):String;

	/**
	 * Nonsynchronous [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
	 */
	@:native("SET_RESOURCE_KVP_INT_NO_SYNC")
	static function setResourceKvpIntNoSync(key:String, value:Int):Dynamic;

	/**
	 * A setter for [GET_RESOURCE_KVP_STRING](#\_0x5240DA5A).
	 */
	@:native("SET_RESOURCE_KVP")
	static function setResourceKvp(key:String, value:String):Dynamic;

	/**
	 * 
	 */
	@:native("END_FIND_KVP")
	static function endFindKvp(handle:Int):Dynamic;

	/**
	 * A getter for [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938).
	 */
	@:native("GET_RESOURCE_KVP_FLOAT")
	static function getResourceKvpFloat(key:String):Float;

	/**
	 * 
	 */
	@:native("DELETE_RESOURCE_KVP")
	static function deleteResourceKvp(key:String):Dynamic;

	/**
	 * 
	 */
	@:native("FIND_KVP")
	static function findKvp(handle:Int):String;

	/**
	 * A setter for [GET_RESOURCE_KVP_FLOAT](#\_0x35BDCEEA).
	 */
	@:native("SET_RESOURCE_KVP_FLOAT")
	static function setResourceKvpFloat(key:String, value:Float):Dynamic;

	/**
	 * Nonsynchronous [SET_RESOURCE_KVP](#\_0x21C7A35B) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
	 */
	@:native("SET_RESOURCE_KVP_NO_SYNC")
	static function setResourceKvpNoSync(key:String, value:String):Dynamic;

	/**
	 * Nonsynchronous [DELETE_RESOURCE_KVP](#\_0x7389B5DF) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
	 */
	@:native("DELETE_RESOURCE_KVP_NO_SYNC")
	static function deleteResourceKvpNoSync(key:String):Dynamic;

	/**
	 * 
	 */
	@:native("START_FIND_KVP")
	static function startFindKvp(prefix:String):Int;

	/**
	 * A getter for [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8).
	 */
	@:native("GET_RESOURCE_KVP_INT")
	static function getResourceKvpInt(key:String):Int;

	/**
	 * A setter for [GET_RESOURCE_KVP_INT](#\_0x557B586A).
	 */
	@:native("SET_RESOURCE_KVP_INT")
	static function setResourceKvpInt(key:String, value:Int):Dynamic;

}
