package fivem.server.natives;

@:native("_G")
extern class Cfx {
	/**
	 * This is a getter for [SET_HELI_TAIL_EXPLODE_THROW_DASHBOARD](#\_0x3EC8BF18AA453FE9)
	 */
	@:native("IsHeliTailBoomBreakable")
	static function isHeliTailBoomBreakable(heli:Dynamic):Bool;

	/**
	 * Deletes the specified entity.
	 * 
	 * **NOTE**: For trains this will only work if called on the train engine, it will not work on its carriages.
	 */
	@:native("DeleteEntity")
	static function deleteEntity(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("DoesEntityExist")
	static function doesEntityExist(entity:Dynamic):Bool;

	/**
	 * Returns whether or not the player exists
	 */
	@:native("DoesPlayerExist")
	static function doesPlayerExist(playerSrc:String):Bool;

	/**
	 * Requests whether or not the player owns the specified package.
	 */
	@:native("DoesPlayerOwnSkuExt")
	static function doesPlayerOwnSkuExt(playerSrc:String, skuId:Int):Bool;

	/**
	 * Deletes the specified `entity` and any carriage its attached to, or that is attached to it.
	 */
	@:native("DeleteTrain")
	static function deleteTrain(entity:Dynamic):Dynamic;

	/**
	 * > This native is deprecated and may be removed in a future version. Use the [Tebex API](https://docs.tebex.io/) instead.
	 * 
	 * Returns whether or not the specified player has enough information to start a commerce session for.
	 */
	@:native("CanPlayerStartCommerceSession")
	static function canPlayerStartCommerceSession(playerSrc:String):Bool;

	/**
	 * 
	 */
	@:native("DoesBoatSinkWhenWrecked")
	static function doesBoatSinkWhenWrecked(vehicle:Dynamic):Dynamic;

	/**
	 * > This native is deprecated and may be removed in a future version. Use [`DOES_PLAYER_OWN_SKU_EXT`](#\_0xDEF0480B) instead.
	 * 
	 * Requests whether or not the player owns the specified SKU.
	 */
	@:native("DoesPlayerOwnSku")
	static function doesPlayerOwnSku(playerSrc:String, skuId:Int):Bool;

	/**
	 * 
	 */
	@:native("EnableEnhancedHostSupport")
	static function enableEnhancedHostSupport(enabled:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("DropPlayer")
	static function dropPlayer(playerSrc:String, reason:String):Dynamic;

	/**
	 * Returns all object handles known to the server.

	 * The data returned adheres to the following layout:
	 * 
	 * ```
	 * [127, 42, 13, 37]
	 * ```
	 */
	@:native("GetAllObjects")
	static function getAllObjects():Dynamic;

	/**
	 * 
	 */
	@:native("GetAirDragMultiplierForPlayersVehicle")
	static function getAirDragMultiplierForPlayersVehicle(playerSrc:String):Float;

	/**
	 * 
	 */
	@:native("FlagServerAsPrivate")
	static function flagServerAsPrivate(private_:Bool):Dynamic;

	/**
	 * Returns all peds handles known to the server.

	 * The data returned adheres to the following layout:
	 * 
	 * ```
	 * [127, 42, 13, 37]
	 * ```
	 */
	@:native("GetAllPeds")
	static function getAllPeds():Dynamic;

	/**
	 * This native gets an entity's population type.
	 */
	@:native("GetEntityPopulationType")
	static function getEntityPopulationType(entity:Dynamic):Int;

	/**
	 * Returns all vehicle handles known to the server.

	 * The data returned adheres to the following layout:
	 * 
	 * ```
	 * [127, 42, 13, 37]
	 * ```
	 */
	@:native("GetAllVehicles")
	static function getAllVehicles():Dynamic;

	/**
	 * Returns the current console output buffer.
	 */
	@:native("GetConsoleBuffer")
	static function getConsoleBuffer():String;

	/**
	 * Gets the entity that this entity is attached to.
	 */
	@:native("GetEntityAttachedTo")
	static function getEntityAttachedTo(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetEntityVelocity")
	static function getEntityVelocity(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetEntityRotation")
	static function getEntityRotation(entity:Dynamic):Dynamic;

	/**
	 * This native converts the passed string to a hash.
	 */
	@:native("GetHashKey")
	static function getHashKey(model:String):Int;

	/**
	 * 
	 */
	@:native("GetHeliRearRotorDamageScale")
	static function getHeliRearRotorDamageScale(heli:Dynamic):Float;

	/**
	 * This is a getter for [SET_DISABLE_HELI_EXPLODE_FROM_BODY_DAMAGE](#\_0xEDBC8405B3895CC9)
	 */
	@:native("GetHeliDisableExplodeFromBodyDamage")
	static function getHeliDisableExplodeFromBodyDamage(heli:Dynamic):Bool;

	/**
	 * This native is a getter for [SET_HELI_TAIL_ROTOR_HEALTH](#\_0xFE205F38AAA58E5B)
	 */
	@:native("GetHeliRearRotorHealth")
	static function getHeliRearRotorHealth(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetEntityCollisionDisabled")
	static function getEntityCollisionDisabled(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetHeliYawControl")
	static function getHeliYawControl(heli:Dynamic):Float;

	/**
	 * Gets the current coordinates for a specified entity. This native is used server side when using OneSync.
	 * 
	 * See [GET_ENTITY_COORDS](#\_0x3FEF770D40960D5A) for client side.
	 */
	@:native("GetEntityCoords")
	static function getEntityCoords(entity:Dynamic):Dynamic;

	/**
	 * Currently it only works with peds.
	 */
	@:native("GetEntityMaxHealth")
	static function getEntityMaxHealth(entity:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetHeliMainRotorHealth")
	static function getHeliMainRotorHealth(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetNumPlayerIdentifiers")
	static function getNumPlayerIdentifiers(playerSrc:String):Int;

	/**
	 * Returns the hash of weapon the Ped is currently using.
	 */
	@:native("GetCurrentPedWeapon")
	static function getCurrentPedWeapon(ped:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetEntityOrphanMode")
	static function getEntityOrphanMode(entity:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetLastPedInVehicleSeat")
	static function getLastPedInVehicleSeat(vehicle:Dynamic, seatIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GetEntityHeading")
	static function getEntityHeading(entity:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetIsVehicleEngineRunning")
	static function getIsVehicleEngineRunning(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetEntityRemoteSyncedScenesAllowed")
	static function getEntityRemoteSyncedScenesAllowed(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetEntityScript")
	static function getEntityScript(entity:Dynamic):String;

	/**
	 * 
	 */
	@:native("GetPedCauseOfDeath")
	static function getPedCauseOfDeath(ped:Dynamic):Int;

	/**
	 * Gets the current game timer in milliseconds.
	 */
	@:native("GetGameTimer")
	static function getGameTimer():Int;

	/**
	 * **Note** This native will always return `1000.0` unless [SET_VEHICLE_BODY_HEALTH](#\_0xB77D05AC8C78AADB), [SET_VEHICLE_ENGINE_HEALTH](#\_0x45F6D8EEF34ABEF1), or [SET_VEHICLE_PETROL_TANK_HEALTH](#\_0x70DB57649FA8D0D8) have been called with a value greater than `1000.0`.
	 */
	@:native("GetHeliGasTankHealth")
	static function getHeliGasTankHealth(heli:Dynamic):Int;

	/**
	 * Only works for vehicle and peds
	 */
	@:native("GetEntityHealth")
	static function getEntityHealth(entity:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetHostId")
	static function getHostId():String;

	/**
	 * 
	 */
	@:native("GetHeliRollControl")
	static function getHeliRollControl(heli:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetIsHeliEngineRunning")
	static function getIsHeliEngineRunning(heli:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetEntityModel")
	static function getEntityModel(entity:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetHeliTailRotorDamageScale")
	static function getHeliTailRotorDamageScale(heli:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetEntityRotationVelocity")
	static function getEntityRotationVelocity(entity:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetIsVehiclePrimaryColourCustom")
	static function getIsVehiclePrimaryColourCustom(vehicle:Dynamic):Bool;

	/**
	 * Gets the specific entity type (as an integer), which can be one of the following defined down below:
	 * 
	 * #### FiveM:
	 * 
	 * ```cpp
	 * enum eNetObjEntityType

	 * {

	 *     Automobile = 0,

	 *     Bike = 1,

	 *     Boat = 2,

	 *     Door = 3,

	 *     Heli = 4,

	 *     Object = 5,

	 *     Ped = 6,

	 *     Pickup = 7,

	 *     PickupPlacement = 8,

	 *     Plane = 9,

	 *     Submarine = 10,

	 *     Player = 11,

	 *     Trailer = 12,

	 *     Train = 13

	 * };
	 * ```
	 * 
	 * #### RedM:
	 * 
	 * ```cpp
	 * enum eNetObjEntityType

	 * {

	 *     Animal = 0,

	 *     Automobile = 1,

	 *     Bike = 2,

	 *     Boat = 3,

	 *     Door = 4,

	 *     Heli = 5,

	 *     Object = 6,

	 *     Ped = 7,

	 *     Pickup = 8,

	 *     PickupPlacement = 9,

	 *     Plane = 10,

	 *     Submarine = 11,

	 *     Player = 12,

	 *     Trailer = 13,

	 *     Train = 14,

	 *     DraftVeh = 15,

	 *     StatsTracker = 16,

	 *     PropSet = 17,

	 *     AnimScene = 18,

	 *     GroupScenario = 19,

	 *     Herd = 20,

	 *     Horse = 21,

	 *     WorldState = 22,

	 *     WorldProjectile = 23,

	 *     Incident = 24,

	 *     Guardzone = 25,

	 *     PedGroup = 26,

	 *     CombatDirector = 27,

	 *     PedSharedTargeting = 28,

	 *     Persistent = 29

	 * };
	 * ```
	 */
	@:native("GetNetTypeFromEntity")
	static function getNetTypeFromEntity(entity:Dynamic):Int;

	/**
	 * **Note**: This native is deprecated, please use [`GET_HELI_REAR_ROTOR_HEALTH`](#\_0x33EE6E2B) instead.
	 */
	@:native("GetHeliTailRotorHealth")
	static function getHeliTailRotorHealth(vehicle:Dynamic):Float;

	/**
	 * Gets the current speed of the entity in meters per second.
	 * 
	 * ```
	 * To convert to MPH: speed * 2.236936

	 * To convert to KPH: speed * 3.6
	 * ```
	 */
	@:native("GetEntitySpeed")
	static function getEntitySpeed(entity:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetIsVehicleSecondaryColourCustom")
	static function getIsVehicleSecondaryColourCustom(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetPedInVehicleSeat")
	static function getPedInVehicleSeat(vehicle:Dynamic, seatIndex:Int):Dynamic;

	/**
	 * Gets the routing bucket for the specified entity.
	 * 
	 * Routing buckets are also known as 'dimensions' or 'virtual worlds' in past echoes, however they are population-aware.
	 */
	@:native("GetEntityRoutingBucket")
	static function getEntityRoutingBucket(entity:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetPedArmour")
	static function getPedArmour(ped:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetHeliThrottleControl")
	static function getHeliThrottleControl(heli:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetNumPlayerIndices")
	static function getNumPlayerIndices():Int;

	/**
	 * Gets the script task command currently assigned to the ped.
	 */
	@:native("GetPedScriptTaskCommand")
	static function getPedScriptTaskCommand(ped:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetNumPlayerTokens")
	static function getNumPlayerTokens(playerSrc:String):Int;

	/**
	 * **Note** This native will always return `1000.0` unless [SET_VEHICLE_BODY_HEALTH](#\_0xB77D05AC8C78AADB), [SET_VEHICLE_ENGINE_HEALTH](#\_0x45F6D8EEF34ABEF1), or [SET_VEHICLE_PETROL_TANK_HEALTH](#\_0x70DB57649FA8D0D8) have been called with a value greater than `1000.0`.
	 */
	@:native("GetHeliBodyHealth")
	static function getHeliBodyHealth(heli:Dynamic):Int;

	/**
	 * **Note** This native will always return `1000.0` unless [SET_VEHICLE_BODY_HEALTH](#\_0xB77D05AC8C78AADB), [SET_VEHICLE_ENGINE_HEALTH](#\_0x45F6D8EEF34ABEF1), or [SET_VEHICLE_PETROL_TANK_HEALTH](#\_0x70DB57649FA8D0D8) have been called with a value greater than `1000.0`.
	 */
	@:native("GetHeliEngineHealth")
	static function getHeliEngineHealth(heli:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetMount")
	static function getMount(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetPedStealthMovement")
	static function getPedStealthMovement(ped:Dynamic):Dynamic;

	/**
	 * Gets the type of a ped's specific task given an index of the CPedTaskSpecificDataNode nodes.

	 * A ped will typically have a task at index 0, if a ped has multiple tasks at once they will be in the order 0, 1, 2, etc.
	 */
	@:native("GetPedSpecificTaskType")
	static function getPedSpecificTaskType(ped:Dynamic, index:Int):Int;

	/**
	 * Gets the entity type (as an integer), which can be one of the following defined down below:
	 * 
	 * **The following entities will return type `1`:**
	 * 
	 * *   Ped
	 * *   Player
	 * *   Animal (Red Dead Redemption 2)
	 * *   Horse (Red Dead Redemption 2)
	 * 
	 * **The following entities will return type `2`:**
	 * 
	 * *   Automobile
	 * *   Bike
	 * *   Boat
	 * *   Heli
	 * *   Plane
	 * *   Submarine
	 * *   Trailer
	 * *   Train
	 * *   DraftVeh (Red Dead Redemption 2)
	 * 
	 * **The following entities will return type `3`:**
	 * 
	 * *   Object
	 * *   Door
	 * *   Pickup
	 * 
	 * Otherwise, a value of `0` will be returned.
	 */
	@:native("GetEntityType")
	static function getEntityType(entity:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetPedDesiredHeading")
	static function getPedDesiredHeading(ped:Dynamic):Float;

	/**
	 * To get the number of identifiers, use [GET_NUM_PLAYER_IDENTIFIERS](#\_0xFF7F66AB)
	 * 
	 * To get a specific type of identifier, use [GET_PLAYER_IDENTIFIER_BY_TYPE](#\_0xA61C8FC6)
	 */
	@:native("GetPlayerIdentifier")
	static function getPlayerIdentifier(playerSrc:String, identiferIndex:Int):String;

	/**
	 * Gets the stage of the peds scripted task.
	 */
	@:native("GetPedScriptTaskStage")
	static function getPedScriptTaskStage(ped:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetPlayerGuid")
	static function getPlayerGuid(playerSrc:String):String;

	/**
	 * 
	 */
	@:native("GetHeliMainRotorDamageScale")
	static function getHeliMainRotorDamageScale(heli:Dynamic):Float;

	/**
	 * Get the entity that killed the ped. This native is used server side when using OneSync.
	 */
	@:native("GetPedSourceOfDeath")
	static function getPedSourceOfDeath(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetPlayerMaxArmour")
	static function getPlayerMaxArmour(playerSrc:String):Int;

	/**
	 * See the client-side [GET_LANDING_GEAR_STATE](#\_0x9B0F3DCA3DB0F4CD) native for a description of landing gear states.
	 */
	@:native("GetLandingGearState")
	static function getLandingGearState(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetPlayerLastMsg")
	static function getPlayerLastMsg(playerSrc:String):Int;

	/**
	 * Gets the current relationship group hash of a ped.
	 */
	@:native("GetPedRelationshipGroupHash")
	static function getPedRelationshipGroupHash(ped:Dynamic):Int;

	/**
	 * See [GET_PLAYER_PEER_STATISTICS](#\_0x9A928294) if you want more detailed information, like packet loss, and packet/rtt variance
	 */
	@:native("GetPlayerPing")
	static function getPlayerPing(playerSrc:String):Int;

	/**
	 * Get an identifier from a player by the type of the identifier.

	 * Known [Identifiers](https://docs.fivem.net/docs/scripting-reference/runtimes/lua/functions/GetPlayerIdentifiers/#identifier-types)
	 */
	@:native("GetPlayerIdentifierByType")
	static function getPlayerIdentifierByType(playerSrc:String, identifierType:String):String;

	/**
	 * Gets the routing bucket for the specified player.
	 * 
	 * Routing buckets are also known as 'dimensions' or 'virtual worlds' in past echoes, however they are population-aware.
	 */
	@:native("GetPlayerRoutingBucket")
	static function getPlayerRoutingBucket(playerSrc:String):Int;

	/**
	 * 
	 */
	@:native("GetPasswordHash")
	static function getPasswordHash(password:String):String;

	/**
	 * 
	 */
	@:native("GetPlayerInvincible")
	static function getPlayerInvincible(playerSrc:String):Bool;

	/**
	 * Used to get the player's Ped Entity ID when a valid `playerSrc` is passed.
	 */
	@:native("GetPlayerPed")
	static function getPlayerPed(playerSrc:String):Dynamic;

	/**
	 * 
	 */
	@:native("GetHeliPitchControl")
	static function getHeliPitchControl(heli:Dynamic):Float;

	/**
	 * Gets the current known coordinates for the specified player from cops perspective. This native is used server side when using OneSync.
	 */
	@:native("GetPlayerWantedCentrePosition")
	static function getPlayerWantedCentrePosition(playerSrc:String):Dynamic;

	/**
	 * Gets the current time online for a specified player.
	 */
	@:native("GetPlayerTimeOnline")
	static function getPlayerTimeOnline(playerSrc:String):Int;

	/**
	 * Gets the current camera rotation for a specified player. This native is used server side when using OneSync.
	 */
	@:native("GetPlayerCameraRotation")
	static function getPlayerCameraRotation(playerSrc:String):Dynamic;

	/**
	 * Gets the current fake wanted level for a specified player. This native is used server side when using OneSync.
	 */
	@:native("GetPlayerFakeWantedLevel")
	static function getPlayerFakeWantedLevel(playerSrc:String):Int;

	/**
	 * ```cpp
	 * const int ENET_PACKET_LOSS_SCALE = 65536;

	 * 

	 * enum PeerStatistics

	 * {

	 * 	// PacketLoss will only update once every 10 seconds, use PacketLossEpoch if you want the time

	 * 	// since the last time the packet loss was updated.

	 * 

	 * 	// the amount of packet loss the player has, needs to be scaled with PACKET_LOSS_SCALE

	 * 	PacketLoss = 0,

	 * 	// The variance in the packet loss

	 * 	PacketLossVariance = 1,

	 * 	// The time since the last packet update in ms, relative to the peers connection time

	 * 	PacketLossEpoch = 2,

	 * 	// The mean amount of time it takes for a packet to get to the client (ping)

	 * 	RoundTripTime = 3,

	 * 	// The variance in the round trip time

	 * 	RoundTripTimeVariance = 4,

	 * 	// Despite their name, these are only updated once every 5 seconds, you can get the last time this was updated with PacketThrottleEpoch

	 * 	// The last recorded round trip time of a packet

	 * 	LastRoundTripTime = 5,

	 * 	// The last round trip time variance

	 * 	LastRoundTripTimeVariance = 6,

	 * 	// The time since the last packet throttle update, relative to the peers connection time

	 * 	PacketThrottleEpoch = 7,

	 * };
	 * ```
	 * 
	 * These statistics only update once every 10 seconds.
	 */
	@:native("GetPlayerPeerStatistics")
	static function getPlayerPeerStatistics(playerSrc:String, peerStatistic:Int):Int;

	/**
	 * 
	 */
	@:native("GetPlayerMaxHealth")
	static function getPlayerMaxHealth(playerSrc:String):Int;

	/**
	 * 
	 */
	@:native("GetSeatPedIsUsing")
	static function getSeatPedIsUsing(ped:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetThrusterSideRcsThrottle")
	static function getThrusterSideRcsThrottle(jetpack:Dynamic):Float;

	/**
	 * Get the last entity that damaged the ped. This native is used server side when using OneSync.
	 */
	@:native("GetPedSourceOfDamage")
	static function getPedSourceOfDamage(ped:Dynamic):Dynamic;

	/**
	 * Gets a player's token. Tokens can be used to enhance banning logic, however are specific to a server.
	 */
	@:native("GetPlayerToken")
	static function getPlayerToken(playerSrc:String, index:Int):String;

	/**
	 * ```
	 * Returns given players wanted level server-side.
	 * ```
	 */
	@:native("GetPlayerWantedLevel")
	static function getPlayerWantedLevel(playerSrc:String):Int;

	/**
	 * 
	 */
	@:native("GetPlayerFromIndex")
	static function getPlayerFromIndex(index:Int):String;

	/**
	 * 
	 */
	@:native("GetPlayerTeam")
	static function getPlayerTeam(playerSrc:String):Int;

	/**
	 * 
	 */
	@:native("GetPlayerEndpoint")
	static function getPlayerEndpoint(playerSrc:String):String;

	/**
	 * 
	 */
	@:native("GetTrainCarriageIndex")
	static function getTrainCarriageIndex(train:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetPedMaxHealth")
	static function getPedMaxHealth(ped:Dynamic):Int;

	/**
	 * ```
	 * Gets the amount of time player has spent evading the cops.

	 * Counter starts and increments only when cops are chasing the player.

	 * If the player is evading, the timer will pause.
	 * ```
	 */
	@:native("GetPlayerTimeInPursuit")
	static function getPlayerTimeInPursuit(playerSrc:String, lastPursuit:Bool):Int;

	/**
	 * Gets the focus position (i.e. the position of the active camera in the game world) of a player.
	 */
	@:native("GetPlayerFocusPos")
	static function getPlayerFocusPos(playerSrc:String):Dynamic;

	/**
	 * Returns the physical on-disk path of the specified resource.
	 */
	@:native("GetResourcePath")
	static function getResourcePath(resourceName:String):String;

	/**
	 * 
	 */
	@:native("GetVehicleCustomSecondaryColour")
	static function getVehicleCustomSecondaryColour(vehicle:Dynamic, r:Dynamic, g:Dynamic, b:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetVehicleCustomPrimaryColour")
	static function getVehicleCustomPrimaryColour(vehicle:Dynamic, r:Dynamic, g:Dynamic, b:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetPlayerName")
	static function getPlayerName(playerSrc:String):String;

	/**
	 * 
	 */
	@:native("GetTrainCarriageEngine")
	static function getTrainCarriageEngine(train:Dynamic):Int;

	/**
	 * Returns the open position of the specified door on the target vehicle.
	 */
	@:native("GetVehicleDoorStatus")
	static function getVehicleDoorStatus(vehicle:Dynamic, doorIndex:Int):Int;

	/**
	 * 
	 */
	@:native("GetTrainForwardCarriage")
	static function getTrainForwardCarriage(train:Dynamic):Int;

	/**
	 * Gets the flight nozzel position for the specified vehicle. See the client-side [\_GET_VEHICLE_FLIGHT_NOZZLE_POSITION](#\_0xDA62027C8BDB326E) native for usage examples.
	 */
	@:native("GetVehicleFlightNozzlePosition")
	static function getVehicleFlightNozzlePosition(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetTrainBackwardCarriage")
	static function getTrainBackwardCarriage(train:Dynamic):Int;

	/**
	 * An alias of [GET_CURRENT_PED_WEAPON](#\_0xB0237302).
	 * 
	 * Note, the client-side [GET_SELECTED_PED_WEAPON](#\_0x0A6DB4965674D243) native returns the weapon selected via the HUD (weapon wheel). This data is not available to FXServer.
	 */
	@:native("GetSelectedPedWeapon")
	static function getSelectedPedWeapon(ped:Dynamic):Int;

	/**
	 * Currently it only works when set to "all players".
	 */
	@:native("GetVehicleDoorsLockedForPlayer")
	static function getVehicleDoorsLockedForPlayer(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetVehicleDashboardColour")
	static function getVehicleDashboardColour(vehicle:Dynamic, color:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetVehicleInteriorColour")
	static function getVehicleInteriorColour(vehicle:Dynamic, color:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetVehicleDirtLevel")
	static function getVehicleDirtLevel(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetVehicleTotalRepairs")
	static function getVehicleTotalRepairs(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetVehicleLivery")
	static function getVehicleLivery(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetVehicleExtraColours")
	static function getVehicleExtraColours(vehicle:Dynamic, pearlescentColor:Dynamic, wheelColor:Dynamic):Dynamic;

	/**
	 * Gets the lock on state for the specified vehicle. See the client-side [GET_VEHICLE_HOMING_LOCKON_STATE](#\_0xE6B0E8CFC3633BF0) native for a description of lock on states.
	 */
	@:native("GetVehicleHomingLockonState")
	static function getVehicleHomingLockonState(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetVehicleColours")
	static function getVehicleColours(vehicle:Dynamic, colorPrimary:Dynamic, colorSecondary:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetVehicleNumberPlateTextIndex")
	static function getVehicleNumberPlateTextIndex(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetThrusterThrottle")
	static function getThrusterThrottle(jetpack:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetVehicleHeadlightsColour")
	static function getVehicleHeadlightsColour(vehicle:Dynamic):Int;

	/**
	 * ```lua
	 * enum_VehicleLockStatus = {

	 *     None = 0,

	 *     Locked = 2,

	 *     LockedForPlayer = 3,

	 *     StickPlayerInside = 4, -- Doesn't allow players to exit the vehicle with the exit vehicle key.

	 *     CanBeBrokenInto = 7, -- Can be broken into the car. If the glass is broken, the value will be set to 1

	 *     CanBeBrokenIntoPersist = 8, -- Can be broken into persist

	 *     CannotBeTriedToEnter = 10, -- Cannot be tried to enter (Nothing happens when you press the vehicle enter key).

	 * }
	 * ```
	 * 
	 * It should be [noted](https://forum.cfx.re/t/4863241) that while the [client-side command](#\_0x25BC98A59C2EA962) and its

	 * setter distinguish between states 0 (unset) and 1 (unlocked), the game will synchronize both as state 0, so the server-side

	 * command will return only '0' if unlocked.
	 */
	@:native("GetVehicleDoorLockStatus")
	static function getVehicleDoorLockStatus(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetVehicleEngineHealth")
	static function getVehicleEngineHealth(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetVehicleRoofLivery")
	static function getVehicleRoofLivery(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetVehicleNumberPlateText")
	static function getVehicleNumberPlateText(vehicle:Dynamic):String;

	/**
	 * 
	 */
	@:native("GetVehicleTyreSmokeColor")
	static function getVehicleTyreSmokeColor(vehicle:Dynamic, r:Dynamic, g:Dynamic, b:Dynamic):Dynamic;

	/**
	 * Getter to check if one of the neon lights of a vehicle is enabled. This native is the server side getter of [IS_VEHICLE_NEON_LIGHT_ENABLED](#\_0x8C4B92553E4766A5).
	 * 
	 * ```cpp
	 * enum neonIndex

	 * {

	 *     NEON_BACK = 0,   // Back neon

	 *     NEON_RIGHT = 1,  // Right neon

	 *     NEON_LEFT = 2,   // Left neon

	 *     NEON_FRONT = 3   // Front neon

	 * };
	 * ```
	 */
	@:native("GetVehicleNeonEnabled")
	static function getVehicleNeonEnabled(vehicle:Dynamic, neonIndex:Int):Bool;

	/**
	 * 
	 */
	@:native("GetVehicleWheelType")
	static function getVehicleWheelType(vehicle:Dynamic):Int;

	/**
	 * Getter to check the neon colour of a vehicle. This native is the server side getter of [GET_VEHICLE_NEON_LIGHTS_COLOUR](#\_0x7619EEE8C886757F).
	 */
	@:native("GetVehicleNeonColour")
	static function getVehicleNeonColour(vehicle:Dynamic, red:Dynamic, green:Dynamic, blue:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetVehicleBodyHealth")
	static function getVehicleBodyHealth(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetVehicleWindowTint")
	static function getVehicleWindowTint(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("GetVehicleLightsState")
	static function getVehicleLightsState(vehicle:Dynamic, lightsOn:Dynamic, highbeamsOn:Dynamic):Bool;

	/**
	 * Gets the vehicle the specified Ped is/was in depending on bool value. This native is used server side when using OneSync.
	 */
	@:native("GetVehiclePedIsIn")
	static function getVehiclePedIsIn(ped:Dynamic, lastVehicle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("GetVehiclePetrolTankHealth")
	static function getVehiclePetrolTankHealth(vehicle:Dynamic):Float;

	/**
	 * Gets the vehicle that is locked on to for the specified vehicle.
	 */
	@:native("GetVehicleLockOnTarget")
	static function getVehicleLockOnTarget(vehicle:Dynamic):Dynamic;

	/**
	 * This is a getter for the client-side native [`START_VEHICLE_HORN`](#\_0x9C8C6504B5B63D2C), which allows you to return the horn type of the vehicle.
	 * 
	 * **Note**: This native only gets the hash value set with `START_VEHICLE_HORN`. If a wrong hash is passed into `START_VEHICLE_HORN`, it will return this wrong hash.
	 * 
	 * ```cpp
	 * enum eHornTypes

	 * {

	 *     NORMAL = 1330140148,

	 *     HELDDOWN = -2087385909,

	 *     AGGRESSIVE = -92810745

	 * }
	 * ```
	 */
	@:native("GetVehicleHornType")
	static function getVehicleHornType(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("HasEntityBeenMarkedAsNoLongerNeeded")
	static function hasEntityBeenMarkedAsNoLongerNeeded(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetVehicleRadioStationIndex")
	static function getVehicleRadioStationIndex(vehicle:Dynamic):Int;

	/**
	 * 
	 */
	@:native("HasVehicleBeenOwnedByPlayer")
	static function hasVehicleBeenOwnedByPlayer(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsHeliTailBoomBroken")
	static function isHeliTailBoomBroken(heli:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsPedOnMount")
	static function isPedOnMount(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("HasVehicleBeenDamagedByBullets")
	static function hasVehicleBeenDamagedByBullets(vehicle:Dynamic):Bool;

	/**
	 * > This native is deprecated and may be removed in a future version. Use [`IS_PLAYER_COMMERCE_INFO_LOADED_EXT`](#\_0x1D14F4FE) instead.
	 * 
	 * Requests whether or not the commerce data for the specified player has loaded.
	 */
	@:native("IsPlayerCommerceInfoLoaded")
	static function isPlayerCommerceInfoLoaded(playerSrc:String):Bool;

	/**
	 * This native checks if the given entity is visible.
	 */
	@:native("IsEntityVisible")
	static function isEntityVisible(entity:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsPedRagdoll")
	static function isPedRagdoll(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("IsPedInAnyVehicle")
	static function isPedInAnyVehicle(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsFlashLightOn")
	static function isFlashLightOn(ped:Dynamic):Dynamic;

	/**
	 * This native checks if the given ped is a player.
	 */
	@:native("IsPedAPlayer")
	static function isPedAPlayer(ped:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsTrainCaboose")
	static function isTrainCaboose(train:Dynamic):Dynamic;

	/**
	 * Requests whether or not the commerce data for the specified player has loaded from Tebex.
	 */
	@:native("IsPlayerCommerceInfoLoadedExt")
	static function isPlayerCommerceInfoLoadedExt(playerSrc:String):Bool;

	/**
	 * 
	 */
	@:native("IsPlayerAceAllowed")
	static function isPlayerAceAllowed(playerSrc:String, object:String):Bool;

	/**
	 * 
	 */
	@:native("IsPedUsingActionMode")
	static function isPedUsingActionMode(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("IsBoatWrecked")
	static function isBoatWrecked(vehicle:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("IsBoatAnchoredAndFrozen")
	static function isBoatAnchoredAndFrozen(vehicle:Dynamic):Dynamic;

	/**
	 * Mutes or unmutes the specified player
	 */
	@:native("MumbleSetPlayerMuted")
	static function mumbleSetPlayerMuted(playerSrc:Int, toggle:Dynamic):Dynamic;

	/**
	 * ```
	 * This will return true if the player is evading wanted level, meaning that the wanted level stars are blink.

	 * Otherwise will return false.

	 * 

	 * If the player is not wanted, it simply returns false.
	 * ```
	 */
	@:native("IsPlayerEvadingWantedLevel")
	static function isPlayerEvadingWantedLevel(playerSrc:String):Bool;

	/**
	 * 
	 */
	@:native("IsPedHandcuffed")
	static function isPedHandcuffed(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("IsVehicleExtraTurnedOn")
	static function isVehicleExtraTurnedOn(vehicle:Dynamic, extraId:Int):Bool;

	/**
	 * See the client-side [IS_VEHICLE_WINDOW_INTACT](#\_0x46E571A0E20D01F1) for a window indexes list.
	 */
	@:native("IsVehicleWindowIntact")
	static function isVehicleWindowIntact(vehicle:Dynamic, windowIndex:Int):Bool;

	/**
	 * 
	 */
	@:native("IsVehicleTyreBurst")
	static function isVehicleTyreBurst(vehicle:Dynamic, wheelID:Int, completely:Bool):Bool;

	/**
	 * 
	 */
	@:native("IsPedStrafing")
	static function isPedStrafing(ped:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("IsPlayerInFreeCamMode")
	static function isPlayerInFreeCamMode(playerSrc:String):Dynamic;

	/**
	 * Requests the commerce data from Tebex for the specified player, including the owned SKUs.
	 * 
	 * Use [`IS_PLAYER_COMMERCE_INFO_LOADED_EXT`](#\_0x1D14F4FE) to check if it has loaded.
	 * 
	 * This will not automatically update whenever a client purchases a package, if you want to fetch new purchases you will need to call this native again.
	 * 
	 * This native will temporarily cache the players commerce data for 10 seconds, a call to this native after 10 seconds will re-fetch the players commerce data.
	 */
	@:native("LoadPlayerCommerceDataExt")
	static function loadPlayerCommerceDataExt(playerSrc:String):Dynamic;

	/**
	 * 
	 */
	@:native("IsPedInVehicle")
	static function isPedInVehicle(ped:Dynamic, vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsVehicleSirenOn")
	static function isVehicleSirenOn(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsPlayerUsingSuperJump")
	static function isPlayerUsingSuperJump(playerSrc:String):Bool;

	/**
	 * > This native is deprecated and may be removed in a future version. Use [`LOAD_PLAYER_COMMERCE_DATA_EXT`](#\_0x7995539E) instead.
	 * 
	 * Requests the commerce data for the specified player, including the owned SKUs. Use `IS_PLAYER_COMMERCE_INFO_LOADED` to check if it has loaded.
	 */
	@:native("LoadPlayerCommerceData")
	static function loadPlayerCommerceData(playerSrc:String):Dynamic;

	/**
	 * Create a permanent voice channel.
	 */
	@:native("MumbleCreateChannel")
	static function mumbleCreateChannel(id:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkGetEntityFromNetworkId")
	static function networkGetEntityFromNetworkId(netId:Int):Dynamic;

	/**
	 * Checks if the player is currently muted
	 */
	@:native("MumbleIsPlayerMuted")
	static function mumbleIsPlayerMuted(playerSrc:Int):Bool;

	/**
	 * Registers a listener for console output messages.
	 */
	@:native("RegisterConsoleListener")
	static function registerConsoleListener(listener:haxe.Constraints.Function):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkGetVoiceProximityOverrideForPlayer")
	static function networkGetVoiceProximityOverrideForPlayer(playerSrc:String):Dynamic;

	/**
	 * Returns the first owner ID of the specified entity.
	 */
	@:native("NetworkGetFirstEntityOwner")
	static function networkGetFirstEntityOwner(entity:Dynamic):Int;

	/**
	 * 
	 */
	@:native("NetworkGetNetworkIdFromEntity")
	static function networkGetNetworkIdFromEntity(entity:Dynamic):Int;

	/**
	 * 
	 */
	@:native("PerformHttpRequestInternal")
	static function performHttpRequestInternal(requestData:String, requestDataLength:Int):Int;

	/**
	 * 
	 */
	@:native("PerformHttpRequestInternalEx")
	static function performHttpRequestInternalEx(requestData:Dynamic):Int;

	/**
	 * **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
	 * 
	 * Registers a cached resource asset with the resource system, similar to the automatic scanning of the `stream/` folder.
	 */
	@:native("RegisterResourceAsset")
	static function registerResourceAsset(resourceName:String, fileName:String):String;

	/**
	 * > This native is deprecated and may be removed in a future version. Use the [Tebex API](https://docs.tebex.io/) instead.
	 * 
	 * Requests the specified player to buy the passed SKU. This'll pop up a prompt on the client, which upon acceptance

	 * will open the browser prompting further purchase details.
	 */
	@:native("RequestPlayerCommerceSession")
	static function requestPlayerCommerceSession(playerSrc:String, skuId:Int):Dynamic;

	/**
	 * Registers a build task factory for resources.

	 * The function should return an object (msgpack map) with the following fields:
	 * 
	 * ```
	 * {

	 * // returns whether the specific resource should be built

	 * shouldBuild = func(resourceName: string): bool,

	 * 

	 * // asynchronously start building the specific resource.

	 * // call cb when completed

	 * build = func(resourceName: string, cb: func(success: bool, status: string): void): void

	 * }
	 * ```
	 */
	@:native("RegisterResourceBuildTaskFactory")
	static function registerResourceBuildTaskFactory(factoryId:String, factoryFn:haxe.Constraints.Function):Dynamic;

	/**
	 * It allows to flag an entity to ignore the request control filter policy.
	 */
	@:native("SetEntityIgnoreRequestControlFilter")
	static function setEntityIgnoreRequestControlFilter(entity:Dynamic, ignore:Dynamic):Dynamic;

	/**
	 * Schedules the specified resource to run a tick as soon as possible, bypassing the server's fixed tick rate.
	 */
	@:native("ScheduleResourceTick")
	static function scheduleResourceTick(resourceName:String):Dynamic;

	/**
	 * ```cpp
	 * enum EntityOrphanMode {

	 *     // Default, this will delete the entity when it isn't relevant to any players

	 *     // NOTE: this *doesn't* mean when they're no longer in scope

	 *     DeleteWhenNotRelevant = 0,

	 *     // The entity will be deleted whenever its original owner disconnects

	 *     // NOTE: if this is set when the entities original owner has already left it will be

	 *     // marked for deletion (similar to just calling DELETE_ENTITY)

	 *     DeleteOnOwnerDisconnect = 1,

	 *     // The entity will never be deleted by the server when it does relevancy checks

	 *     // you should only use this on entities that need to be relatively persistent

	 *     KeepEntity = 2

	 * }
	 * ```
	 * 
	 * Sets what the server will do when the entity no longer has its original owner. By default the server will cleanup entities that it considers "no longer relevant".
	 * 
	 * When used on trains, this native will recursively call onto all attached carriages.
	 * 
	 * **NOTE**: When used with `KeepEntity` (2) this native only guarantees that the ***server*** will not delete the entity, client requests to delete the entity will still work perfectly fine.
	 */
	@:native("SetEntityOrphanMode")
	static function setEntityOrphanMode(entity:Dynamic, orphanMode:Int):Dynamic;

	/**
	 * Writes the specified data to a file in the specified resource.

	 * Using a length of `-1` will automatically detect the length assuming the data is a C string.
	 */
	@:native("SaveResourceFile")
	static function saveResourceFile(resourceName:String, fileName:String, data:String, dataLength:Int):Bool;

	/**
	 * 
	 */
	@:native("SetConvarServerInfo")
	static function setConvarServerInfo(varName:String, value:String):Dynamic;

	/**
	 * Sets the routing bucket for the specified entity.
	 * 
	 * Routing buckets are also known as 'dimensions' or 'virtual worlds' in past echoes, however they are population-aware.
	 */
	@:native("SetEntityRoutingBucket")
	static function setEntityRoutingBucket(entity:Dynamic, bucket:Int):Dynamic;

	/**
	 * Used to replicate a server variable onto clients.
	 */
	@:native("SetConvarReplicated")
	static function setConvarReplicated(varName:String, value:String):Dynamic;

	/**
	 * It overrides the default distance culling radius of an entity. Set to `0.0` to reset.

	 * If you want to interact with an entity outside of your players' scopes set the radius to a huge number.
	 * 
	 * **WARNING**: Culling natives are deprecated and have known, [unfixable issues](https://forum.cfx.re/t/issue-with-culling-radius-and-server-side-entities/4900677/4)
	 */
	@:native("SetEntityDistanceCullingRadius")
	static function setEntityDistanceCullingRadius(entity:Dynamic, radius:Float):Dynamic;

	/**
	 * 
	 */
	@:native("SetConvar")
	static function setConvar(varName:String, value:String):Dynamic;

	/**
	 * Enables or disables the owner check for the specified entity in network-synchronized scenes. When set to `false`, the entity cannot participate in synced scenes initiated by clients that do not own the entity.
	 * 
	 * By default, this is `false` for all entities, meaning only the entity's owner can include it in networked synchronized scenes.
	 */
	@:native("SetEntityRemoteSyncedScenesAllowed")
	static function setEntityRemoteSyncedScenesAllowed(entity:Dynamic, allow:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SetGameType")
	static function setGameType(gametypeName:String):Dynamic;

	/**
	 * 
	 */
	@:native("SetMapName")
	static function setMapName(mapName:String):Dynamic;

	/**
	 * Sets the handler for HTTP requests made to the executing resource.
	 * 
	 * Example request URL: `http://localhost:30120/http-test/ping` - this request will be sent to the `http-test` resource with the `/ping` path.
	 * 
	 * The handler function assumes the following signature:
	 * 
	 * ```ts
	 * function HttpHandler(

	 *   request: {

	 *     address: string;

	 *     headers: Record<string, string>;

	 *     method: string;

	 *     path: string;

	 *     setDataHandler(handler: (data: string) => void): void;

	 *     setDataHandler(handler: (data: ArrayBuffer) => void, binary: 'binary'): void;

	 *     setCancelHandler(handler: () => void): void;

	 *   },

	 *   response: {

	 *     writeHead(code: number, headers?: Record<string, string | string[]>): void;

	 *     write(data: string): void;

	 *     send(data?: string): void;

	 *   }

	 * ): void;
	 * ```
	 * 
	 * *   **request**: The request object.
	 *     *   **address**: The IP address of the request sender.
	 *     *   **path**: The path to where the request was sent.
	 *     *   **headers**: The headers sent with the request.
	 *     *   **method**: The request method.
	 *     *   **setDataHandler**: Sets the handler for when a data body is passed with the request. Additionally you can pass the `'binary'` argument to receive a `BufferArray` in JavaScript or `System.Byte[]` in C# (has no effect in Lua).
	 *     *   **setCancelHandler**: Sets the handler for when the request is cancelled.
	 * *   **response**: An object to control the response.
	 *     *   **writeHead**: Sets the status code & headers of the response. Can be only called once and won't work if called after running other response functions.
	 *     *   **write**: Writes to the response body without sending it. Can be called multiple times.
	 *     *   **send**: Writes to the response body and then sends it along with the status code & headers, finishing the request.
	 */
	@:native("SetHttpHandler")
	static function setHttpHandler(handler:haxe.Constraints.Function):Dynamic;

	/**
	 * Sets the culling radius for the specified player.

	 * Set to `0.0` to reset.
	 * 
	 * **WARNING**: Culling natives are deprecated and have known, [unfixable issues](https://forum.cfx.re/t/issue-with-culling-radius-and-server-side-entities/4900677/4)
	 */
	@:native("SetPlayerCullingRadius")
	static function setPlayerCullingRadius(playerSrc:String, radius:Float):Dynamic;

	/**
	 * Sets the entity lockdown mode for a specific routing bucket.
	 * 
	 * Lockdown modes are:
	 * 
	 * | Mode       | Meaning                                                    |

	 * | ---------- | ---------------------------------------------------------- |

	 * | `strict`   | No entities can be created by clients at all.              |

	 * | `relaxed`  | Only script-owned entities created by clients are blocked. |

	 * | `inactive` | Clients can create any entity they want.                   |
	 */
	@:native("SetRoutingBucketEntityLockdownMode")
	static function setRoutingBucketEntityLockdownMode(bucketId:Int, mode:String):Dynamic;

	/**
	 * 
	 */
	@:native("StartResource")
	static function startResource(resourceName:String):Bool;

	/**
	 * The backing function for TriggerLatentClientEvent.
	 */
	@:native("TriggerLatentClientEventInternal")
	static function triggerLatentClientEventInternal(eventName:String, eventTarget:String, eventPayload:String, payloadLength:Int, bps:Int):Dynamic;

	/**
	 * Sets the routing bucket for the specified player.
	 * 
	 * Routing buckets are also known as 'dimensions' or 'virtual worlds' in past echoes, however they are population-aware.
	 */
	@:native("SetPlayerRoutingBucket")
	static function setPlayerRoutingBucket(playerSrc:String, bucket:Int):Dynamic;

	/**
	 * Prints 'structured trace' data to the server `file descriptor 3` channel. This is not generally useful outside of

	 * server monitoring utilities.
	 */
	@:native("PrintStructuredTrace")
	static function printStructuredTrace(jsonString:String):Dynamic;

	/**
	 * 
	 */
	@:native("VerifyPasswordHash")
	static function verifyPasswordHash(password:String, hash:String):Bool;

	/**
	 * Sets whether or not the specified routing bucket has automatically-created population enabled.
	 */
	@:native("SetRoutingBucketPopulationEnabled")
	static function setRoutingBucketPopulationEnabled(bucketId:Int, mode:Bool):Dynamic;

	/**
	 * The backing function for TriggerClientEvent.
	 */
	@:native("TriggerClientEventInternal")
	static function triggerClientEventInternal(eventName:String, eventTarget:String, eventPayload:String, payloadLength:Int):Dynamic;

	/**
	 * Equivalent to CREATE_VEHICLE, but it uses 'server setter' logic (like the former CREATE_AUTOMOBILE) as a workaround for

	 * reliability concerns regarding entity creation RPC.
	 * 
	 * Unlike CREATE_AUTOMOBILE, this supports other vehicle types as well.
	 */
	@:native("CreateVehicleServerSetter")
	static function createVehicleServerSetter(modelHash:Int, type:String, x:Float, y:Float, z:Float, heading:Float):Dynamic;

	/**
	 * 
	 */
	@:native("TempBanPlayer")
	static function tempBanPlayer(playerSrc:String, reason:String):Dynamic;

	/**
	 * 
	 */
	@:native("StopResource")
	static function stopResource(resourceName:String):Bool;

	/**
	 * CLEAR_PED_SECONDARY_TASK
	 * 
	 * **This is the server-side RPC native equivalent of the client native [CLEAR_PED_SECONDARY_TASK](?\_0x176CECF6F920D707).**
	 */
	@:native("ClearPedSecondaryTask")
	static function clearPedSecondaryTask(ped:Dynamic):Dynamic;

	/**
	 * ```cpp
	 * enum eApplyForceTypes {

	 * APPLY_TYPE_FORCE = 0,

	 * APPLY_TYPE_IMPULSE = 1,

	 * APPLY_TYPE_EXTERNAL_FORCE = 2,

	 * APPLY_TYPE_EXTERNAL_IMPULSE = 3,

	 * APPLY_TYPE_TORQUE = 4,

	 * APPLY_TYPE_ANGULAR_IMPULSE = 5

	 * }
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [APPLY_FORCE_TO_ENTITY](?\_0xC5F68BE9613E2D18).**
	 */
	@:native("ApplyForceToEntity")
	static function applyForceToEntity(entity:Dynamic, forceType:Int, x:Float, y:Float, z:Float, offX:Float, offY:Float, offZ:Float, nComponent:Int, bLocalForce:Bool, bLocalOffset:Bool, bScaleByMass:Bool, bPlayAudio:Bool, bScaleByTimeWarp:Bool):Dynamic;

	/**
	 * GIVE_WEAPON_TO_PED
	 * 
	 * **This is the server-side RPC native equivalent of the client native [GIVE_WEAPON_TO_PED](?\_0xBF0FD6E56C964FCB).**
	 */
	@:native("GiveWeaponToPed")
	static function giveWeaponToPed(ped:Dynamic, weaponHash:Int, ammoCount:Int, isHidden:Bool, bForceInHand:Bool):Dynamic;

	/**
	 * Scans the resources in the specified resource root. This function is only available in the 'monitor mode' process and is

	 * not available for user resources.
	 */
	@:native("ScanResourceRoot")
	static function scanResourceRoot(rootPath:String, callback:haxe.Constraints.Function):Dynamic;

	/**
	 * Sets the rotation of a specified entity in the game world.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_ENTITY_ROTATION](?\_0x8524A8B0171D5E07).**
	 */
	@:native("SetEntityRotation")
	static function setEntityRotation(entity:Dynamic, pitch:Float, roll:Float, yaw:Float, rotationOrder:Int, bDeadCheck:Bool):Dynamic;

	/**
	 * Creates a vehicle with the specified model at the specified position. This vehicle will initially be owned by the creating

	 * script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
	 * 
	 * ```
	 * NativeDB Added Parameter 8: BOOL p7
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [CREATE_VEHICLE](?\_0xAF35D0D2583051B0).**
	 */
	@:native("CreateVehicle")
	static function createVehicle(modelHash:Int, x:Float, y:Float, z:Float, heading:Float, isNetwork:Bool, netMissionEntity:Bool):Dynamic;

	/**
	 * Creates a blip for the specified coordinates. You can use `SET_BLIP_` natives to change the blip.
	 * 
	 * **This is the server-side RPC native equivalent of the client native [ADD_BLIP_FOR_COORD](?\_0x5A039BB0BCA604B6).**
	 */
	@:native("AddBlipForCoord")
	static function addBlipForCoord(x:Float, y:Float, z:Float):Dynamic;

	/**
	 * REMOVE_WEAPON_COMPONENT_FROM_PED
	 * 
	 * **This is the server-side RPC native equivalent of the client native [REMOVE_WEAPON_COMPONENT_FROM_PED](?\_0x1E8BE90C74FB4C09).**
	 */
	@:native("RemoveWeaponComponentFromPed")
	static function removeWeaponComponentFromPed(ped:Dynamic, weaponHash:Int, componentHash:Int):Dynamic;

	/**
	 * Nonsynchronous operations will not wait for a disk/filesystem flush before returning from a write or delete call. They will be much faster than their synchronous counterparts (e.g., bulk operations), however, a system crash may lose the data to some recent operations.
	 * 
	 * This native ensures all `_NO_SYNC` operations are synchronized with the disk/filesystem.
	 */
	@:native("FlushResourceKvp")
	static function flushResourceKvp():Dynamic;

	/**
	 * ```
	 * p1 is always 0 in R* scripts; and a quick disassembly seems to indicate that p1 is unused.
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_PED_RANDOM_COMPONENT_VARIATION](?\_0xC8A9481A01E63C28).**
	 */
	@:native("SetPedRandomComponentVariation")
	static function setPedRandomComponentVariation(ped:Dynamic, p1:Int):Dynamic;

	/**
	 * SET_PED_INTO_VEHICLE
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_PED_INTO_VEHICLE](?\_0xF75B0D629E1C063D).**
	 */
	@:native("SetPedIntoVehicle")
	static function setPedIntoVehicle(ped:Dynamic, vehicle:Dynamic, seatIndex:Int):Dynamic;

	/**
	 * Immediately stops the pedestrian from whatever it's doing. The difference between this and [CLEAR_PED_TASKS](#\_0xE1EF3C1216AFF2CD) is that this one teleports the ped but does not change the position of the ped.
	 * 
	 * **This is the server-side RPC native equivalent of the client native [CLEAR_PED_TASKS_IMMEDIATELY](?\_0xAAA34F8A7CB32098).**
	 */
	@:native("ClearPedTasksImmediately")
	static function clearPedTasksImmediately(ped:Dynamic):Dynamic;

	/**
	 * This native is used to set component variation on a ped. Components, drawables and textures IDs are related to the ped model.
	 * 
	 * ### MP Freemode list of components
	 * 
	 * **0**: Face

	 * **1**: Mask

	 * **2**: Hair

	 * **3**: Torso

	 * **4**: Leg

	 * **5**: Parachute / bag

	 * **6**: Shoes

	 * **7**: Accessory

	 * **8**: Undershirt

	 * **9**: Kevlar

	 * **10**: Badge

	 * **11**: Torso 2

	 * List of Component IDs
	 * 
	 * ```cpp
	 * // Components

	 * enum ePedVarComp

	 * {

	 * PV_COMP_INVALID = 0xFFFFFFFF,

	 * PV_COMP_HEAD = 0, // "HEAD"

	 * PV_COMP_BERD = 1, // "BEARD"

	 * PV_COMP_HAIR = 2, // "HAIR"

	 * PV_COMP_UPPR = 3, // "UPPER"

	 * PV_COMP_LOWR = 4, // "LOWER"

	 * PV_COMP_HAND = 5, // "HAND"

	 * PV_COMP_FEET = 6, // "FEET"

	 * PV_COMP_TEEF = 7, // "TEETH"

	 * PV_COMP_ACCS = 8, // "ACCESSORIES"

	 * PV_COMP_TASK = 9, // "TASK"

	 * PV_COMP_DECL = 10, // "DECL"

	 * PV_COMP_JBIB = 11, // "JBIB"

	 * PV_COMP_MAX = 12,

	 * };
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_PED_COMPONENT_VARIATION](?\_0x262B14F48D29DE80).**
	 */
	@:native("SetPedComponentVariation")
	static function setPedComponentVariation(ped:Dynamic, componentId:Int, drawableId:Int, textureId:Int, paletteId:Int):Dynamic;

	/**
	 * CREATE_PED_INSIDE_VEHICLE
	 * 
	 * **This is the server-side RPC native equivalent of the client native [CREATE_PED_INSIDE_VEHICLE](?\_0x7DD959874C1FD534).**
	 */
	@:native("CreatePedInsideVehicle")
	static function createPedInsideVehicle(vehicle:Dynamic, pedType:Int, modelHash:Int, seat:Int, isNetwork:Bool, bScriptHostPed:Bool):Dynamic;

	/**
	 * ```
	 * Used for freemode (online) characters.

	 * Called after SET_PED_HEAD_OVERLAY().
	 * ```
	 * 
	 * **Note:**

	 * You may need to call [`SetPedHeadBlendData`](#\_0x9414E18B9434C2FE) prior to calling this native in order for it to work.
	 * 
	 * **This is the server-side RPC native equivalent of the client native [\_SET_PED_HEAD_OVERLAY_COLOR](?\_0x497BF74A7B9CB952).**
	 */
	@:native("SetPedHeadOverlayColor")
	static function SetPedHeadOverlayColor(ped:Dynamic, overlayID:Int, colorType:Int, colorID:Int, secondColorID:Int):Dynamic;

	/**
	 * Clear a ped's tasks. Stop animations and other tasks created by scripts.
	 * 
	 * **This is the server-side RPC native equivalent of the client native [CLEAR_PED_TASKS](?\_0xE1EF3C1216AFF2CD).**
	 */
	@:native("ClearPedTasks")
	static function clearPedTasks(ped:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 4: BOOL p3
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_PED_AMMO](?\_0x14E56BC5B5DB6A19).**
	 */
	@:native("SetPedAmmo")
	static function setPedAmmo(ped:Dynamic, weaponHash:Int, ammo:Int):Dynamic;

	/**
	 * Sets the coordinates (world position) for a specified entity, offset by the radius of the entity on the Z axis.
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_ENTITY_COORDS](?\_0x06843DA7060A026B).**
	 */
	@:native("SetEntityCoords")
	static function setEntityCoords(entity:Dynamic, xPos:Float, yPos:Float, zPos:Float, alive:Bool, deadFlag:Bool, ragdollFlag:Bool, clearArea:Bool):Dynamic;

	/**
	 * CLEAR_PED_PROP
	 * 
	 * **This is the server-side RPC native equivalent of the client native [CLEAR_PED_PROP](?\_0x0943E5B8E078E76E).**
	 */
	@:native("ClearPedProp")
	static function clearPedProp(ped:Dynamic, propId:Int):Dynamic;

	/**
	 * Freezes or unfreezes an entity preventing its coordinates to change by the player if set to `true`. You can still change the entity position using [`SET_ENTITY_COORDS`](#\_0x06843DA7060A026B).
	 * 
	 * **This is the server-side RPC native equivalent of the client native [FREEZE_ENTITY_POSITION](?\_0x428CA6DBD1094446).**
	 */
	@:native("FreezeEntityPosition")
	static function freezeEntityPosition(entity:Dynamic, toggle:Bool):Dynamic;

	/**
	 * Creates a ped (biped character, pedestrian, actor) with the specified model at the specified position and heading.

	 * This ped will initially be owned by the creating script as a mission entity, and the model should be loaded already

	 * (e.g. using REQUEST_MODEL).
	 * 
	 * **This is the server-side RPC native equivalent of the client native [CREATE_PED](?\_0xD49F9B0955C367DE).**
	 */
	@:native("CreatePed")
	static function createPed(pedType:Int, modelHash:Int, x:Float, y:Float, z:Float, heading:Float, isNetwork:Bool, bScriptHostPed:Bool):Dynamic;

	/**
	 * Create a blip with a radius for the specified coordinates (it doesnt create the blip sprite, so you need to use [AddBlipCoords](#\_0xC6F43D0E))

	 * Example image:

	 * ![example](https://i.imgur.com/fDCmHVD.png)
	 * 
	 * **This is the server-side RPC native equivalent of the client native [ADD_BLIP_FOR_RADIUS](?\_0x46818D79B1F7499A).**
	 */
	@:native("AddBlipForRadius")
	static function addBlipForRadius(posX:Float, posY:Float, posZ:Float, radius:Float):Dynamic;

	/**
	 * ```
	 * Applies an Item from a PedDecorationCollection to a ped. These include tattoos and shirt decals.

	 * collection - PedDecorationCollection filename hash

	 * overlay - Item name hash

	 * Example:

	 * Entry inside "mpbeach_overlays.xml" -

	 * <Item>

	 * <uvPos x="0.500000" y="0.500000" />

	 * <scale x="0.600000" y="0.500000" />

	 * <rotation value="0.000000" />

	 * <nameHash>FM_Hair_Fuzz</nameHash>

	 * <txdHash>mp_hair_fuzz</txdHash>

	 * <txtHash>mp_hair_fuzz</txtHash>

	 * <zone>ZONE_HEAD</zone>

	 * <type>TYPE_TATTOO</type>

	 * <faction>FM</faction>

	 * <garment>All</garment>

	 * <gender>GENDER_DONTCARE</gender>

	 * <award />

	 * <awardLevel />

	 * </Item>

	 * Code:

	 * PED::_0x5F5D1665E352A839(PLAYER::PLAYER_PED_ID(), MISC::GET_HASH_KEY("mpbeach_overlays"), MISC::GET_HASH_KEY("fm_hair_fuzz"))
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [ADD_PED_DECORATION_FROM_HASHES](?\_0x5F5D1665E352A839).**
	 */
	@:native("AddPedDecorationFromHashes")
	static function addPedDecorationFromHashes(ped:Dynamic, collection:Int, overlay:Int):Dynamic;

	/**
	 * GIVE_WEAPON_COMPONENT_TO_PED
	 * 
	 * **This is the server-side RPC native equivalent of the client native [GIVE_WEAPON_COMPONENT_TO_PED](?\_0xD966D51AA5B28BB9).**
	 */
	@:native("GiveWeaponComponentToPed")
	static function giveWeaponComponentToPed(ped:Dynamic, weaponHash:Int, componentHash:Int):Dynamic;

	/**
	 * SET_PED_RANDOM_PROPS
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_PED_RANDOM_PROPS](?\_0xC44AA05345C992C6).**
	 */
	@:native("SetPedRandomProps")
	static function setPedRandomProps(ped:Dynamic):Dynamic;

	/**
	 * Creates an object (prop) with the specified model centered at the specified position.

	 * This object will initially be owned by the creating script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
	 * 
	 * **This is the server-side RPC native equivalent of the client native [CREATE_OBJECT_NO_OFFSET](?\_0x9A294B2138ABB884).**
	 */
	@:native("CreateObjectNoOffset")
	static function createObjectNoOffset(modelHash:Int, x:Float, y:Float, z:Float, isNetwork:Bool, netMissionEntity:Bool, doorFlag:Bool):Dynamic;

	/**
	 * SET_PED_CAN_RAGDOLL
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_PED_CAN_RAGDOLL](?\_0xB128377056A54E2A).**
	 */
	@:native("SetPedCanRagdoll")
	static function setPedCanRagdoll(ped:Dynamic, toggle:Bool):Dynamic;

	/**
	 * This native is used to set prop variation on a ped. Components, drawables and textures IDs are related to the ped model.
	 * 
	 * ### MP Freemode list of props
	 * 
	 * **0**: Hats

	 * **1**: Glasses

	 * **2**: Ears

	 * **6**: Watches

	 * **7**: Bracelets

	 * List of Prop IDs
	 * 
	 * ```cpp
	 * enum eAnchorPoints

	 * {

	 * ANCHOR_HEAD = 0, // "p_head"

	 * ANCHOR_EYES = 1, // "p_eyes"

	 * ANCHOR_EARS = 2, // "p_ears"

	 * ANCHOR_MOUTH = 3, // "p_mouth"

	 * ANCHOR_LEFT_HAND = 4, // "p_lhand"

	 * ANCHOR_RIGHT_HAND = 5, // "p_rhand"

	 * ANCHOR_LEFT_WRIST = 6, // "p_lwrist"

	 * ANCHOR_RIGHT_WRIST = 7, // "p_rwrist"

	 * ANCHOR_HIP = 8, // "p_lhip"

	 * ANCHOR_LEFT_FOOT = 9, // "p_lfoot"

	 * ANCHOR_RIGHT_FOOT = 10, // "p_rfoot"

	 * ANCHOR_PH_L_HAND = 11, // "ph_lhand"

	 * ANCHOR_PH_R_HAND = 12, // "ph_rhand"

	 * NUM_ANCHORS = 13,

	 * };
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_PED_PROP_INDEX](?\_0x93376B65A266EB5F).**
	 */
	@:native("SetPedPropIndex")
	static function setPedPropIndex(ped:Dynamic, componentId:Int, drawableId:Int, textureId:Int, attach:Bool):Dynamic;

	/**
	 * Set the heading of an entity in degrees also known as "Yaw".
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_ENTITY_HEADING](?\_0x8E2530AA8ADA980E).**
	 */
	@:native("SetEntityHeading")
	static function setEntityHeading(entity:Dynamic, heading:Float):Dynamic;

	/**
	 * Adds a rectangular blip for the specified coordinates/area.

	 * It is recommended to use [SET_BLIP_ROTATION](#\_0xF87683CDF73C3F6E) and [SET_BLIP_COLOUR](#\_0x03D7FB09E75D6B7E) to make the blip not rotate along with the camera.

	 * By default, the blip will show as a *regular* blip with the specified color/sprite if it is outside of the minimap view.

	 * (Native name is *likely* to actually be ADD_BLIP_FOR_AREA, but due to the usual reasons this can't be confirmed)
	 * 
	 * **This is the server-side RPC native equivalent of the client native [\_ADD_BLIP_FOR_AREA](?\_0xCE5D0E5E315DB238).**
	 */
	@:native("AddBlipForArea")
	static function AddBlipForArea(x:Float, y:Float, z:Float, width:Float, height:Float):Dynamic;

	/**
	 * Make the player impervious to all forms of damage.
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_PLAYER_INVINCIBLE](?\_0x239528EACDC3E7DE).**
	 */
	@:native("SetPlayerInvincible")
	static function setPlayerInvincible(player:Dynamic, bInvincible:Bool):Dynamic;

	/**
	 * ```
	 * In the scripts, p3 was always -1.

	 * p3 seems to be duration or timeout of turn animation.

	 * Also facingPed can be 0 or -1 so ped will just raise hands up.
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [TASK_HANDS_UP](?\_0xF2EAB31979A7F910).**
	 */
	@:native("TaskHandsUp")
	static function taskHandsUp(ped:Dynamic, duration:Int, facingPed:Dynamic, p3:Int, p4:Bool):Dynamic;

	/**
	 * p4/p5: Unusued in TU27
	 * 
	 * ### Ragdoll Types
	 * 
	 * **0**: CTaskNMRelax

	 * **1**: CTaskNMScriptControl: Hardcoded not to work in networked environments.

	 * **Else**: CTaskNMBalance
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_PED_TO_RAGDOLL](?\_0xAE99FB955581844A).**
	 */
	@:native("SetPedToRagdoll")
	static function setPedToRagdoll(ped:Dynamic, minTime:Int, maxTime:Int, ragdollType:Int, bAbortIfInjured:Bool, bAbortIfDead:Bool, bForceScriptControl:Bool):Dynamic;

	/**
	 * Sets the tint index for the hair on the specified ped.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_PED_HAIR_TINT](?\_0x4CFFC65454C93A49).**
	 */
	@:native("SetPedHairTint")
	static function setPedHairTint(ped:Dynamic, colorID:Int, highlightColorID:Int):Dynamic;

	/**
	 * Set the model for a specific Player. Note that this will destroy the current Ped for the Player and create a new one, any reference to the old ped will be invalid after calling this.

	 * As per usual, make sure to request the model first and wait until it has loaded.
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_PLAYER_MODEL](?\_0x00A1CADD00108836).**
	 */
	@:native("SetPlayerModel")
	static function setPlayerModel(player:Dynamic, model:Int):Dynamic;

	/**
	 * ```cpp
	 * // Potential names and hash collisions included as comments

	 * enum ePedConfigFlags {

	 * CPED_CONFIG_FLAG_CreatedByFactory = 0,

	 * CPED_CONFIG_FLAG_CanBeShotInVehicle = 1,

	 * CPED_CONFIG_FLAG_NoCriticalHits = 2,

	 * CPED_CONFIG_FLAG_DrownsInWater = 3,

	 * CPED_CONFIG_FLAG_DrownsInSinkingVehicle = 4,

	 * CPED_CONFIG_FLAG_DiesInstantlyWhenSwimming = 5,

	 * CPED_CONFIG_FLAG_HasBulletProofVest = 6,

	 * CPED_CONFIG_FLAG_UpperBodyDamageAnimsOnly = 7,

	 * CPED_CONFIG_FLAG_NeverFallOffSkis = 8,

	 * CPED_CONFIG_FLAG_NeverEverTargetThisPed = 9,

	 * CPED_CONFIG_FLAG_ThisPedIsATargetPriority = 10,

	 * CPED_CONFIG_FLAG_TargettableWithNoLos = 11,

	 * CPED_CONFIG_FLAG_DoesntListenToPlayerGroupCommands = 12,

	 * CPED_CONFIG_FLAG_NeverLeavesGroup = 13,

	 * CPED_CONFIG_FLAG_DoesntDropWeaponsWhenDead = 14,

	 * CPED_CONFIG_FLAG_SetDelayedWeaponAsCurrent = 15,

	 * CPED_CONFIG_FLAG_KeepTasksAfterCleanUp = 16,

	 * CPED_CONFIG_FLAG_BlockNonTemporaryEvents = 17,

	 * CPED_CONFIG_FLAG_HasAScriptBrain = 18,

	 * CPED_CONFIG_FLAG_WaitingForScriptBrainToLoad = 19,

	 * CPED_CONFIG_FLAG_AllowMedicsToReviveMe = 20,

	 * CPED_CONFIG_FLAG_MoneyHasBeenGivenByScript = 21,

	 * CPED_CONFIG_FLAG_NotAllowedToCrouch = 22,

	 * CPED_CONFIG_FLAG_DeathPickupsPersist = 23,

	 * CPED_CONFIG_FLAG_IgnoreSeenMelee = 24,

	 * CPED_CONFIG_FLAG_ForceDieIfInjured = 25,

	 * CPED_CONFIG_FLAG_DontDragMeOutCar = 26,

	 * CPED_CONFIG_FLAG_StayInCarOnJack = 27,

	 * CPED_CONFIG_FLAG_ForceDieInCar = 28,

	 * CPED_CONFIG_FLAG_GetOutUndriveableVehicle = 29,

	 * CPED_CONFIG_FLAG_WillRemainOnBoatAfterMissionEnds = 30,

	 * CPED_CONFIG_FLAG_DontStoreAsPersistent = 31,

	 * CPED_CONFIG_FLAG_WillFlyThroughWindscreen = 32,

	 * CPED_CONFIG_FLAG_DieWhenRagdoll = 33,

	 * CPED_CONFIG_FLAG_HasHelmet = 34,

	 * CPED_CONFIG_FLAG_UseHelmet = 35,

	 * CPED_CONFIG_FLAG_DontTakeOffHelmet = 36,

	 * CPED_CONFIG_FLAG_HideInCutscene = 37,

	 * CPED_CONFIG_FLAG_PedIsEnemyToPlayer = 38,

	 * CPED_CONFIG_FLAG_DisableEvasiveDives = 39,

	 * CPED_CONFIG_FLAG_PedGeneratesDeadBodyEvents = 40,

	 * CPED_CONFIG_FLAG_DontAttackPlayerWithoutWantedLevel = 41,

	 * CPED_CONFIG_FLAG_DontInfluenceWantedLevel = 42,

	 * CPED_CONFIG_FLAG_DisablePlayerLockon = 43,

	 * CPED_CONFIG_FLAG_DisableLockonToRandomPeds = 44,

	 * CPED_CONFIG_FLAG_AllowLockonToFriendlyPlayers = 45,

	 * _0xDB115BFA = 46,

	 * CPED_CONFIG_FLAG_PedBeingDeleted = 47,

	 * CPED_CONFIG_FLAG_BlockWeaponSwitching = 48,

	 * CPED_CONFIG_FLAG_BlockGroupPedAimedAtResponse = 49,

	 * CPED_CONFIG_FLAG_WillFollowLeaderAnyMeans = 50,

	 * CPED_CONFIG_FLAG_BlippedByScript = 51,

	 * CPED_CONFIG_FLAG_DrawRadarVisualField = 52,

	 * CPED_CONFIG_FLAG_StopWeaponFiringOnImpact = 53,

	 * CPED_CONFIG_FLAG_DissableAutoFallOffTests = 54,

	 * CPED_CONFIG_FLAG_SteerAroundDeadBodies = 55,

	 * CPED_CONFIG_FLAG_ConstrainToNavMesh = 56,

	 * CPED_CONFIG_FLAG_SyncingAnimatedProps = 57,

	 * CPED_CONFIG_FLAG_IsFiring = 58,

	 * CPED_CONFIG_FLAG_WasFiring = 59,

	 * CPED_CONFIG_FLAG_IsStanding = 60,

	 * CPED_CONFIG_FLAG_WasStanding = 61,

	 * CPED_CONFIG_FLAG_InVehicle = 62,

	 * CPED_CONFIG_FLAG_OnMount = 63,

	 * CPED_CONFIG_FLAG_AttachedToVehicle = 64,

	 * CPED_CONFIG_FLAG_IsSwimming = 65,

	 * CPED_CONFIG_FLAG_WasSwimming = 66,

	 * CPED_CONFIG_FLAG_IsSkiing = 67,

	 * CPED_CONFIG_FLAG_IsSitting = 68,

	 * CPED_CONFIG_FLAG_KilledByStealth = 69,

	 * CPED_CONFIG_FLAG_KilledByTakedown = 70,

	 * CPED_CONFIG_FLAG_Knockedout = 71,

	 * CPED_CONFIG_FLAG_ClearRadarBlipOnDeath = 72,

	 * CPED_CONFIG_FLAG_JustGotOffTrain = 73,

	 * CPED_CONFIG_FLAG_JustGotOnTrain = 74,

	 * CPED_CONFIG_FLAG_UsingCoverPoint = 75,

	 * CPED_CONFIG_FLAG_IsInTheAir = 76,

	 * CPED_CONFIG_FLAG_KnockedUpIntoAir = 77,

	 * CPED_CONFIG_FLAG_IsAimingGun = 78,

	 * CPED_CONFIG_FLAG_HasJustLeftCar = 79,

	 * CPED_CONFIG_FLAG_TargetWhenInjuredAllowed = 80,

	 * CPED_CONFIG_FLAG_CurrLeftFootCollNM = 81,

	 * CPED_CONFIG_FLAG_PrevLeftFootCollNM = 82,

	 * CPED_CONFIG_FLAG_CurrRightFootCollNM = 83,

	 * CPED_CONFIG_FLAG_PrevRightFootCollNM = 84,

	 * CPED_CONFIG_FLAG_HasBeenBumpedInCar = 85,

	 * CPED_CONFIG_FLAG_InWaterTaskQuitToClimbLadder = 86,

	 * CPED_CONFIG_FLAG_NMTwoHandedWeaponBothHandsConstrained = 87,

	 * CPED_CONFIG_FLAG_CreatedBloodPoolTimer = 88,

	 * CPED_CONFIG_FLAG_DontActivateRagdollFromAnyPedImpact = 89,

	 * CPED_CONFIG_FLAG_GroupPedFailedToEnterCover = 90,

	 * CPED_CONFIG_FLAG_AlreadyChattedOnPhone = 91,

	 * CPED_CONFIG_FLAG_AlreadyReactedToPedOnRoof = 92,

	 * CPED_CONFIG_FLAG_ForcePedLoadCover = 93,

	 * CPED_CONFIG_FLAG_BlockCoweringInCover = 94,

	 * CPED_CONFIG_FLAG_BlockPeekingInCover = 95,

	 * CPED_CONFIG_FLAG_JustLeftCarNotCheckedForDoors = 96,

	 * CPED_CONFIG_FLAG_VaultFromCover = 97,

	 * CPED_CONFIG_FLAG_AutoConversationLookAts = 98,

	 * CPED_CONFIG_FLAG_UsingCrouchedPedCapsule = 99,

	 * CPED_CONFIG_FLAG_HasDeadPedBeenReported = 100,

	 * CPED_CONFIG_FLAG_ForcedAim = 101,

	 * CPED_CONFIG_FLAG_SteersAroundPeds = 102,

	 * CPED_CONFIG_FLAG_SteersAroundObjects = 103,

	 * CPED_CONFIG_FLAG_OpenDoorArmIK = 104,

	 * CPED_CONFIG_FLAG_ForceReload = 105,

	 * CPED_CONFIG_FLAG_DontActivateRagdollFromVehicleImpact = 106,

	 * CPED_CONFIG_FLAG_DontActivateRagdollFromBulletImpact = 107,

	 * CPED_CONFIG_FLAG_DontActivateRagdollFromExplosions = 108,

	 * CPED_CONFIG_FLAG_DontActivateRagdollFromFire = 109,

	 * CPED_CONFIG_FLAG_DontActivateRagdollFromElectrocution = 110,

	 * CPED_CONFIG_FLAG_IsBeingDraggedToSafety = 111,

	 * CPED_CONFIG_FLAG_HasBeenDraggedToSafety = 112,

	 * CPED_CONFIG_FLAG_KeepWeaponHolsteredUnlessFired = 113,

	 * CPED_CONFIG_FLAG_ForceScriptControlledKnockout = 114,

	 * CPED_CONFIG_FLAG_FallOutOfVehicleWhenKilled = 115,

	 * CPED_CONFIG_FLAG_GetOutBurningVehicle = 116,

	 * CPED_CONFIG_FLAG_BumpedByPlayer = 117,

	 * CPED_CONFIG_FLAG_RunFromFiresAndExplosions = 118,

	 * CPED_CONFIG_FLAG_TreatAsPlayerDuringTargeting = 119,

	 * CPED_CONFIG_FLAG_IsHandCuffed = 120,

	 * CPED_CONFIG_FLAG_IsAnkleCuffed = 121,

	 * CPED_CONFIG_FLAG_DisableMelee = 122,

	 * CPED_CONFIG_FLAG_DisableUnarmedDrivebys = 123,

	 * CPED_CONFIG_FLAG_JustGetsPulledOutWhenElectrocuted = 124,

	 * CPED_CONFIG_FLAG_UNUSED_REPLACE_ME = 125,

	 * CPED_CONFIG_FLAG_WillNotHotwireLawEnforcementVehicle = 126,

	 * CPED_CONFIG_FLAG_WillCommandeerRatherThanJack = 127,

	 * CPED_CONFIG_FLAG_CanBeAgitated = 128,

	 * CPED_CONFIG_FLAG_ForcePedToFaceLeftInCover = 129,

	 * CPED_CONFIG_FLAG_ForcePedToFaceRightInCover = 130,

	 * CPED_CONFIG_FLAG_BlockPedFromTurningInCover = 131,

	 * CPED_CONFIG_FLAG_KeepRelationshipGroupAfterCleanUp = 132,

	 * CPED_CONFIG_FLAG_ForcePedToBeDragged = 133,

	 * CPED_CONFIG_FLAG_PreventPedFromReactingToBeingJacked = 134,

	 * CPED_CONFIG_FLAG_IsScuba = 135,

	 * CPED_CONFIG_FLAG_WillArrestRatherThanJack = 136,

	 * CPED_CONFIG_FLAG_RemoveDeadExtraFarAway = 137,

	 * CPED_CONFIG_FLAG_RidingTrain = 138,

	 * CPED_CONFIG_FLAG_ArrestResult = 139,

	 * CPED_CONFIG_FLAG_CanAttackFriendly = 140,

	 * CPED_CONFIG_FLAG_WillJackAnyPlayer = 141,

	 * CPED_CONFIG_FLAG_BumpedByPlayerVehicle = 142,

	 * CPED_CONFIG_FLAG_DodgedPlayerVehicle = 143,

	 * CPED_CONFIG_FLAG_WillJackWantedPlayersRatherThanStealCar = 144,

	 * CPED_CONFIG_FLAG_NoCopWantedAggro = 145,

	 * CPED_CONFIG_FLAG_DisableLadderClimbing = 146,

	 * CPED_CONFIG_FLAG_StairsDetected = 147,

	 * CPED_CONFIG_FLAG_SlopeDetected = 148,

	 * CPED_CONFIG_FLAG_HelmetHasBeenShot = 149,

	 * CPED_CONFIG_FLAG_CowerInsteadOfFlee = 150,

	 * CPED_CONFIG_FLAG_CanActivateRagdollWhenVehicleUpsideDown = 151,

	 * CPED_CONFIG_FLAG_AlwaysRespondToCriesForHelp = 152,

	 * CPED_CONFIG_FLAG_DisableBloodPoolCreation = 153,

	 * CPED_CONFIG_FLAG_ShouldFixIfNoCollision = 154,

	 * CPED_CONFIG_FLAG_CanPerformArrest = 155,

	 * CPED_CONFIG_FLAG_CanPerformUncuff = 156,

	 * CPED_CONFIG_FLAG_CanBeArrested = 157,

	 * CPED_CONFIG_FLAG_MoverConstrictedByOpposingCollisions = 158,

	 * CPED_CONFIG_FLAG_PlayerPreferFrontSeatMP = 159,

	 * CPED_CONFIG_FLAG_DontActivateRagdollFromImpactObject = 160,

	 * CPED_CONFIG_FLAG_DontActivateRagdollFromMelee = 161,

	 * CPED_CONFIG_FLAG_DontActivateRagdollFromWaterJet = 162,

	 * CPED_CONFIG_FLAG_DontActivateRagdollFromDrowning = 163,

	 * CPED_CONFIG_FLAG_DontActivateRagdollFromFalling = 164,

	 * CPED_CONFIG_FLAG_DontActivateRagdollFromRubberBullet = 165,

	 * CPED_CONFIG_FLAG_IsInjured = 166,

	 * CPED_CONFIG_FLAG_DontEnterVehiclesInPlayersGroup = 167,

	 * CPED_CONFIG_FLAG_SwimmingTasksRunning = 168,

	 * CPED_CONFIG_FLAG_PreventAllMeleeTaunts = 169,

	 * CPED_CONFIG_FLAG_ForceDirectEntry = 170,

	 * CPED_CONFIG_FLAG_AlwaysSeeApproachingVehicles = 171,

	 * CPED_CONFIG_FLAG_CanDiveAwayFromApproachingVehicles = 172,

	 * CPED_CONFIG_FLAG_AllowPlayerToInterruptVehicleEntryExit = 173,

	 * CPED_CONFIG_FLAG_OnlyAttackLawIfPlayerIsWanted = 174,

	 * CPED_CONFIG_FLAG_PlayerInContactWithKinematicPed = 175,

	 * CPED_CONFIG_FLAG_PlayerInContactWithSomethingOtherThanKinematicPed = 176,

	 * CPED_CONFIG_FLAG_PedsJackingMeDontGetIn = 177,

	 * CPED_CONFIG_FLAG_AdditionalRappellingPed = 178,

	 * CPED_CONFIG_FLAG_PedIgnoresAnimInterruptEvents = 179,

	 * CPED_CONFIG_FLAG_IsInCustody = 180,

	 * CPED_CONFIG_FLAG_ForceStandardBumpReactionThresholds = 181,

	 * CPED_CONFIG_FLAG_LawWillOnlyAttackIfPlayerIsWanted = 182,

	 * CPED_CONFIG_FLAG_IsAgitated = 183,

	 * CPED_CONFIG_FLAG_PreventAutoShuffleToDriversSeat = 184,

	 * CPED_CONFIG_FLAG_UseKinematicModeWhenStationary = 185,

	 * CPED_CONFIG_FLAG_EnableWeaponBlocking = 186,

	 * CPED_CONFIG_FLAG_HasHurtStarted = 187,

	 * CPED_CONFIG_FLAG_DisableHurt = 188,

	 * CPED_CONFIG_FLAG_PlayerIsWeird = 189,

	 * CPED_CONFIG_FLAG_PedHadPhoneConversation = 190,

	 * CPED_CONFIG_FLAG_BeganCrossingRoad = 191,

	 * CPED_CONFIG_FLAG_WarpIntoLeadersVehicle = 192,

	 * CPED_CONFIG_FLAG_DoNothingWhenOnFootByDefault = 193,

	 * CPED_CONFIG_FLAG_UsingScenario = 194,

	 * CPED_CONFIG_FLAG_VisibleOnScreen = 195,

	 * CPED_CONFIG_FLAG_DontCollideWithKinematic = 196,

	 * CPED_CONFIG_FLAG_ActivateOnSwitchFromLowPhysicsLod = 197,

	 * CPED_CONFIG_FLAG_DontActivateRagdollOnPedCollisionWhenDead = 198,

	 * CPED_CONFIG_FLAG_DontActivateRagdollOnVehicleCollisionWhenDead = 199,

	 * CPED_CONFIG_FLAG_HasBeenInArmedCombat = 200,

	 * CPED_CONFIG_FLAG_UseDiminishingAmmoRate = 201,

	 * CPED_CONFIG_FLAG_Avoidance_Ignore_All = 202,

	 * CPED_CONFIG_FLAG_Avoidance_Ignored_by_All = 203,

	 * CPED_CONFIG_FLAG_Avoidance_Ignore_Group1 = 204,

	 * CPED_CONFIG_FLAG_Avoidance_Member_of_Group1 = 205,

	 * CPED_CONFIG_FLAG_ForcedToUseSpecificGroupSeatIndex = 206,

	 * CPED_CONFIG_FLAG_LowPhysicsLodMayPlaceOnNavMesh = 207,

	 * CPED_CONFIG_FLAG_DisableExplosionReactions = 208,

	 * CPED_CONFIG_FLAG_DodgedPlayer = 209,

	 * CPED_CONFIG_FLAG_WaitingForPlayerControlInterrupt = 210,

	 * CPED_CONFIG_FLAG_ForcedToStayInCover = 211,

	 * CPED_CONFIG_FLAG_GeneratesSoundEvents = 212,

	 * CPED_CONFIG_FLAG_ListensToSoundEvents = 213,

	 * CPED_CONFIG_FLAG_AllowToBeTargetedInAVehicle = 214,

	 * CPED_CONFIG_FLAG_WaitForDirectEntryPointToBeFreeWhenExiting = 215,

	 * CPED_CONFIG_FLAG_OnlyRequireOnePressToExitVehicle = 216,

	 * CPED_CONFIG_FLAG_ForceExitToSkyDive = 217,

	 * CPED_CONFIG_FLAG_SteersAroundVehicles = 218,

	 * CPED_CONFIG_FLAG_AllowPedInVehiclesOverrideTaskFlags = 219,

	 * CPED_CONFIG_FLAG_DontEnterLeadersVehicle = 220,

	 * CPED_CONFIG_FLAG_DisableExitToSkyDive = 221,

	 * CPED_CONFIG_FLAG_ScriptHasDisabledCollision = 222,

	 * CPED_CONFIG_FLAG_UseAmbientModelScaling = 223,

	 * CPED_CONFIG_FLAG_DontWatchFirstOnNextHurryAway = 224,

	 * CPED_CONFIG_FLAG_DisablePotentialToBeWalkedIntoResponse = 225,

	 * CPED_CONFIG_FLAG_DisablePedAvoidance = 226,

	 * CPED_CONFIG_FLAG_ForceRagdollUponDeath = 227,

	 * CPED_CONFIG_FLAG_CanLosePropsOnDamage = 228,

	 * CPED_CONFIG_FLAG_DisablePanicInVehicle = 229,

	 * CPED_CONFIG_FLAG_AllowedToDetachTrailer = 230,

	 * CPED_CONFIG_FLAG_HasShotBeenReactedToFromFront = 231,

	 * CPED_CONFIG_FLAG_HasShotBeenReactedToFromBack = 232,

	 * CPED_CONFIG_FLAG_HasShotBeenReactedToFromLeft = 233,

	 * CPED_CONFIG_FLAG_HasShotBeenReactedToFromRight = 234,

	 * CPED_CONFIG_FLAG_AllowBlockDeadPedRagdollActivation = 235,

	 * CPED_CONFIG_FLAG_IsHoldingProp = 236,

	 * CPED_CONFIG_FLAG_BlocksPathingWhenDead = 237,

	 * CPED_CONFIG_FLAG_ForcePlayNormalScenarioExitOnNextScriptCommand = 238,

	 * CPED_CONFIG_FLAG_ForcePlayImmediateScenarioExitOnNextScriptCommand = 239,

	 * CPED_CONFIG_FLAG_ForceSkinCharacterCloth = 240,

	 * CPED_CONFIG_FLAG_LeaveEngineOnWhenExitingVehicles = 241,

	 * CPED_CONFIG_FLAG_PhoneDisableTextingAnimations = 242,

	 * CPED_CONFIG_FLAG_PhoneDisableTalkingAnimations = 243,

	 * CPED_CONFIG_FLAG_PhoneDisableCameraAnimations = 244,

	 * CPED_CONFIG_FLAG_DisableBlindFiringInShotReactions = 245,

	 * CPED_CONFIG_FLAG_AllowNearbyCoverUsage = 246,

	 * CPED_CONFIG_FLAG_InStrafeTransition = 247,

	 * CPED_CONFIG_FLAG_CanPlayInCarIdles = 248,

	 * CPED_CONFIG_FLAG_CanAttackNonWantedPlayerAsLaw = 249,

	 * CPED_CONFIG_FLAG_WillTakeDamageWhenVehicleCrashes = 250,

	 * CPED_CONFIG_FLAG_AICanDrivePlayerAsRearPassenger = 251,

	 * CPED_CONFIG_FLAG_PlayerCanJackFriendlyPlayers = 252,

	 * CPED_CONFIG_FLAG_OnStairs = 253,

	 * CPED_CONFIG_FLAG_SimulatingAiming = 254,

	 * CPED_CONFIG_FLAG_AIDriverAllowFriendlyPassengerSeatEntry = 255,

	 * CPED_CONFIG_FLAG_ParentCarIsBeingRemoved = 256,

	 * CPED_CONFIG_FLAG_AllowMissionPedToUseInjuredMovement = 257,

	 * CPED_CONFIG_FLAG_CanLoseHelmetOnDamage = 258,

	 * CPED_CONFIG_FLAG_NeverDoScenarioExitProbeChecks = 259,

	 * CPED_CONFIG_FLAG_SuppressLowLODRagdollSwitchWhenCorpseSettles = 260,

	 * CPED_CONFIG_FLAG_PreventUsingLowerPrioritySeats = 261,

	 * CPED_CONFIG_FLAG_JustLeftVehicleNeedsReset = 262,

	 * CPED_CONFIG_FLAG_TeleportIfCantReachPlayer = 263,

	 * CPED_CONFIG_FLAG_PedsInVehiclePositionNeedsReset = 264,

	 * CPED_CONFIG_FLAG_PedsFullyInSeat = 265,

	 * CPED_CONFIG_FLAG_AllowPlayerLockOnIfFriendly = 266,

	 * CPED_CONFIG_FLAG_UseCameraHeadingForDesiredDirectionLockOnTest = 267,

	 * CPED_CONFIG_FLAG_TeleportToLeaderVehicle = 268,

	 * CPED_CONFIG_FLAG_Avoidance_Ignore_WeirdPedBuffer = 269,

	 * CPED_CONFIG_FLAG_OnStairSlope = 270,

	 * CPED_CONFIG_FLAG_HasPlayedNMGetup = 271,

	 * CPED_CONFIG_FLAG_DontBlipCop = 272,

	 * CPED_CONFIG_FLAG_SpawnedAtExtendedRangeScenario = 273,

	 * CPED_CONFIG_FLAG_WalkAlongsideLeaderWhenClose = 274,

	 * CPED_CONFIG_FLAG_KillWhenTrapped = 275,

	 * CPED_CONFIG_FLAG_EdgeDetected = 276,

	 * CPED_CONFIG_FLAG_AlwaysWakeUpPhysicsOfIntersectedPeds = 277,

	 * CPED_CONFIG_FLAG_EquippedAmbientLoadOutWeapon = 278,

	 * CPED_CONFIG_FLAG_AvoidTearGas = 279,

	 * CPED_CONFIG_FLAG_StoppedSpeechUponFreezing = 280,

	 * CPED_CONFIG_FLAG_DisableGoToWritheWhenInjured = 281,

	 * CPED_CONFIG_FLAG_OnlyUseForcedSeatWhenEnteringHeliInGroup = 282,

	 * CPED_CONFIG_FLAG_ThrownFromVehicleDueToExhaustion = 283,

	 * CPED_CONFIG_FLAG_UpdateEnclosedSearchRegion = 284,

	 * CPED_CONFIG_FLAG_DisableWeirdPedEvents = 285,

	 * CPED_CONFIG_FLAG_ShouldChargeNow = 286,

	 * CPED_CONFIG_FLAG_RagdollingOnBoat = 287,

	 * CPED_CONFIG_FLAG_HasBrandishedWeapon = 288,

	 * CPED_CONFIG_FLAG_AllowMinorReactionsAsMissionPed = 289,

	 * CPED_CONFIG_FLAG_BlockDeadBodyShockingEventsWhenDead = 290,

	 * CPED_CONFIG_FLAG_PedHasBeenSeen = 291,

	 * CPED_CONFIG_FLAG_PedIsInReusePool = 292,

	 * CPED_CONFIG_FLAG_PedWasReused = 293,

	 * CPED_CONFIG_FLAG_DisableShockingEvents = 294,

	 * CPED_CONFIG_FLAG_MovedUsingLowLodPhysicsSinceLastActive = 295,

	 * CPED_CONFIG_FLAG_NeverReactToPedOnRoof = 296,

	 * CPED_CONFIG_FLAG_ForcePlayFleeScenarioExitOnNextScriptCommand = 297,

	 * CPED_CONFIG_FLAG_JustBumpedIntoVehicle = 298,

	 * CPED_CONFIG_FLAG_DisableShockingDrivingOnPavementEvents = 299,

	 * CPED_CONFIG_FLAG_ShouldThrowSmokeNow = 300,

	 * CPED_CONFIG_FLAG_DisablePedConstraints = 301,

	 * CPED_CONFIG_FLAG_ForceInitialPeekInCover = 302,

	 * CPED_CONFIG_FLAG_CreatedByDispatch = 303,

	 * CPED_CONFIG_FLAG_PointGunLeftHandSupporting = 304,

	 * CPED_CONFIG_FLAG_DisableJumpingFromVehiclesAfterLeader = 305,

	 * CPED_CONFIG_FLAG_DontActivateRagdollFromPlayerPedImpact = 306,

	 * CPED_CONFIG_FLAG_DontActivateRagdollFromAiRagdollImpact = 307,

	 * CPED_CONFIG_FLAG_DontActivateRagdollFromPlayerRagdollImpact = 308,

	 * CPED_CONFIG_FLAG_DisableQuadrupedSpring = 309,

	 * CPED_CONFIG_FLAG_IsInCluster = 310,

	 * CPED_CONFIG_FLAG_ShoutToGroupOnPlayerMelee = 311,

	 * CPED_CONFIG_FLAG_IgnoredByAutoOpenDoors = 312,

	 * CPED_CONFIG_FLAG_PreferInjuredGetup = 313,

	 * CPED_CONFIG_FLAG_ForceIgnoreMeleeActiveCombatant = 314,

	 * CPED_CONFIG_FLAG_CheckLoSForSoundEvents = 315,

	 * CPED_CONFIG_FLAG_JackedAbandonedCar = 316,

	 * CPED_CONFIG_FLAG_CanSayFollowedByPlayerAudio = 317,

	 * CPED_CONFIG_FLAG_ActivateRagdollFromMinorPlayerContact = 318,

	 * CPED_CONFIG_FLAG_HasPortablePickupAttached = 319,

	 * CPED_CONFIG_FLAG_ForcePoseCharacterCloth = 320,

	 * CPED_CONFIG_FLAG_HasClothCollisionBounds = 321,

	 * CPED_CONFIG_FLAG_HasHighHeels = 322,

	 * CPED_CONFIG_FLAG_TreatAsAmbientPedForDriverLockOn = 323,

	 * CPED_CONFIG_FLAG_DontBehaveLikeLaw = 324,

	 * CPED_CONFIG_FLAG_SpawnedAtScenario = 325,

	 * CPED_CONFIG_FLAG_DisablePoliceInvestigatingBody = 326,

	 * CPED_CONFIG_FLAG_DisableWritheShootFromGround = 327,

	 * CPED_CONFIG_FLAG_LowerPriorityOfWarpSeats = 328,

	 * CPED_CONFIG_FLAG_DisableTalkTo = 329,

	 * CPED_CONFIG_FLAG_DontBlip = 330,

	 * CPED_CONFIG_FLAG_IsSwitchingWeapon = 331,

	 * CPED_CONFIG_FLAG_IgnoreLegIkRestrictions = 332,

	 * CPED_CONFIG_FLAG_ScriptForceNoTimesliceIntelligenceUpdate = 333,

	 * CPED_CONFIG_FLAG_JackedOutOfMyVehicle = 334,

	 * CPED_CONFIG_FLAG_WentIntoCombatAfterBeingJacked = 335,

	 * CPED_CONFIG_FLAG_DontActivateRagdollForVehicleGrab = 336,

	 * CPED_CONFIG_FLAG_ForcePackageCharacterCloth = 337,

	 * CPED_CONFIG_FLAG_DontRemoveWithValidOrder = 338,

	 * CPED_CONFIG_FLAG_AllowTaskDoNothingTimeslicing = 339,

	 * CPED_CONFIG_FLAG_ForcedToStayInCoverDueToPlayerSwitch = 340,

	 * CPED_CONFIG_FLAG_ForceProneCharacterCloth = 341,

	 * CPED_CONFIG_FLAG_NotAllowedToJackAnyPlayers = 342,

	 * CPED_CONFIG_FLAG_InToStrafeTransition = 343,

	 * CPED_CONFIG_FLAG_KilledByStandardMelee = 344,

	 * CPED_CONFIG_FLAG_AlwaysLeaveTrainUponArrival = 345,

	 * CPED_CONFIG_FLAG_ForcePlayDirectedNormalScenarioExitOnNextScriptCommand = 346,

	 * CPED_CONFIG_FLAG_OnlyWritheFromWeaponDamage = 347,

	 * CPED_CONFIG_FLAG_UseSloMoBloodVfx = 348,

	 * CPED_CONFIG_FLAG_EquipJetpack = 349,

	 * CPED_CONFIG_FLAG_PreventDraggedOutOfCarThreatResponse = 350,

	 * CPED_CONFIG_FLAG_ScriptHasCompletelyDisabledCollision = 351,

	 * CPED_CONFIG_FLAG_NeverDoScenarioNavChecks = 352,

	 * CPED_CONFIG_FLAG_ForceSynchronousScenarioExitChecking = 353,

	 * CPED_CONFIG_FLAG_ThrowingGrenadeWhileAiming = 354,

	 * CPED_CONFIG_FLAG_HeadbobToRadioEnabled = 355,

	 * CPED_CONFIG_FLAG_ForceDeepSurfaceCheck = 356,

	 * CPED_CONFIG_FLAG_DisableDeepSurfaceAnims = 357,

	 * CPED_CONFIG_FLAG_DontBlipNotSynced = 358,

	 * CPED_CONFIG_FLAG_IsDuckingInVehicle = 359,

	 * CPED_CONFIG_FLAG_PreventAutoShuffleToTurretSeat = 360,

	 * CPED_CONFIG_FLAG_DisableEventInteriorStatusCheck = 361,

	 * CPED_CONFIG_FLAG_HasReserveParachute = 362,

	 * CPED_CONFIG_FLAG_UseReserveParachute = 363,

	 * CPED_CONFIG_FLAG_TreatDislikeAsHateWhenInCombat = 364,

	 * CPED_CONFIG_FLAG_OnlyUpdateTargetWantedIfSeen = 365,

	 * CPED_CONFIG_FLAG_AllowAutoShuffleToDriversSeat = 366,

	 * CPED_CONFIG_FLAG_DontActivateRagdollFromSmokeGrenade = 367,

	 * CPED_CONFIG_FLAG_LinkMBRToOwnerOnChain = 368,

	 * CPED_CONFIG_FLAG_AmbientFriendBumpedByPlayer = 369,

	 * CPED_CONFIG_FLAG_AmbientFriendBumpedByPlayerVehicle = 370,

	 * CPED_CONFIG_FLAG_InFPSUnholsterTransition = 371,

	 * CPED_CONFIG_FLAG_PreventReactingToSilencedCloneBullets = 372,

	 * CPED_CONFIG_FLAG_DisableInjuredCryForHelpEvents = 373,

	 * CPED_CONFIG_FLAG_NeverLeaveTrain = 374,

	 * CPED_CONFIG_FLAG_DontDropJetpackOnDeath = 375,

	 * CPED_CONFIG_FLAG_UseFPSUnholsterTransitionDuringCombatRoll = 376,

	 * CPED_CONFIG_FLAG_ExitingFPSCombatRoll = 377,

	 * CPED_CONFIG_FLAG_ScriptHasControlOfPlayer = 378,

	 * CPED_CONFIG_FLAG_PlayFPSIdleFidgetsForProjectile = 379,

	 * CPED_CONFIG_FLAG_DisableAutoEquipHelmetsInBikes = 380,

	 * CPED_CONFIG_FLAG_DisableAutoEquipHelmetsInAircraft = 381,

	 * CPED_CONFIG_FLAG_WasPlayingFPSGetup = 382,

	 * CPED_CONFIG_FLAG_WasPlayingFPSMeleeActionResult = 383,

	 * CPED_CONFIG_FLAG_PreferNoPriorityRemoval = 384,

	 * CPED_CONFIG_FLAG_FPSFidgetsAbortedOnFire = 385,

	 * CPED_CONFIG_FLAG_ForceFPSIKWithUpperBodyAnim = 386,

	 * CPED_CONFIG_FLAG_SwitchingCharactersInFirstPerson = 387,

	 * CPED_CONFIG_FLAG_IsClimbingLadder = 388,

	 * CPED_CONFIG_FLAG_HasBareFeet = 389,

	 * CPED_CONFIG_FLAG_UNUSED_REPLACE_ME_2 = 390,

	 * CPED_CONFIG_FLAG_GoOnWithoutVehicleIfItIsUnableToGetBackToRoad = 391,

	 * CPED_CONFIG_FLAG_BlockDroppingHealthSnacksOnDeath = 392,

	 * CPED_CONFIG_FLAG_ResetLastVehicleOnVehicleExit = 393,

	 * CPED_CONFIG_FLAG_ForceThreatResponseToNonFriendToFriendMeleeActions = 394,

	 * CPED_CONFIG_FLAG_DontRespondToRandomPedsDamage = 395,

	 * CPED_CONFIG_FLAG_AllowContinuousThreatResponseWantedLevelUpdates = 396,

	 * CPED_CONFIG_FLAG_KeepTargetLossResponseOnCleanup = 397,

	 * CPED_CONFIG_FLAG_PlayersDontDragMeOutOfCar = 398,

	 * CPED_CONFIG_FLAG_BroadcastRepondedToThreatWhenGoingToPointShooting = 399,

	 * CPED_CONFIG_FLAG_IgnorePedTypeForIsFriendlyWith = 400,

	 * CPED_CONFIG_FLAG_TreatNonFriendlyAsHateWhenInCombat = 401,

	 * CPED_CONFIG_FLAG_DontLeaveVehicleIfLeaderNotInVehicle = 402,

	 * CPED_CONFIG_FLAG_ChangeFromPermanentToAmbientPopTypeOnMigration = 403,

	 * CPED_CONFIG_FLAG_AllowMeleeReactionIfMeleeProofIsOn = 404,

	 * CPED_CONFIG_FLAG_UsingLowriderLeans = 405,

	 * CPED_CONFIG_FLAG_UsingAlternateLowriderLeans = 406,

	 * CPED_CONFIG_FLAG_UseNormalExplosionDamageWhenBlownUpInVehicle = 407,

	 * CPED_CONFIG_FLAG_DisableHomingMissileLockForVehiclePedInside = 408,

	 * CPED_CONFIG_FLAG_DisableTakeOffScubaGear = 409,

	 * CPED_CONFIG_FLAG_IgnoreMeleeFistWeaponDamageMult = 410,

	 * CPED_CONFIG_FLAG_LawPedsCanFleeFromNonWantedPlayer = 411,

	 * CPED_CONFIG_FLAG_ForceBlipSecurityPedsIfPlayerIsWanted = 412,

	 * CPED_CONFIG_FLAG_IsHolsteringWeapon = 413,

	 * CPED_CONFIG_FLAG_UseGoToPointForScenarioNavigation = 414,

	 * CPED_CONFIG_FLAG_DontClearLocalPassengersWantedLevel = 415,

	 * CPED_CONFIG_FLAG_BlockAutoSwapOnWeaponPickups = 416,

	 * CPED_CONFIG_FLAG_ThisPedIsATargetPriorityForAI = 417,

	 * CPED_CONFIG_FLAG_IsSwitchingHelmetVisor = 418,

	 * CPED_CONFIG_FLAG_ForceHelmetVisorSwitch = 419,

	 * CPED_CONFIG_FLAG_IsPerformingVehicleMelee = 420,

	 * CPED_CONFIG_FLAG_UseOverrideFootstepPtFx = 421,

	 * CPED_CONFIG_FLAG_DisableVehicleCombat = 422,

	 * CPED_CONFIG_FLAG_TreatAsFriendlyForTargetingAndDamage = 423,

	 * CPED_CONFIG_FLAG_AllowBikeAlternateAnimations = 424,

	 * CPED_CONFIG_FLAG_TreatAsFriendlyForTargetingAndDamageNonSynced = 425,

	 * CPED_CONFIG_FLAG_UseLockpickVehicleEntryAnimations = 426,

	 * CPED_CONFIG_FLAG_IgnoreInteriorCheckForSprinting = 427,

	 * CPED_CONFIG_FLAG_SwatHeliSpawnWithinLastSpottedLocation = 428,

	 * CPED_CONFIG_FLAG_DisableStartEngine = 429,

	 * CPED_CONFIG_FLAG_IgnoreBeingOnFire = 430,

	 * CPED_CONFIG_FLAG_DisableTurretOrRearSeatPreference = 431,

	 * CPED_CONFIG_FLAG_DisableWantedHelicopterSpawning = 432,

	 * CPED_CONFIG_FLAG_UseTargetPerceptionForCreatingAimedAtEvents = 433,

	 * CPED_CONFIG_FLAG_DisableHomingMissileLockon = 434,

	 * CPED_CONFIG_FLAG_ForceIgnoreMaxMeleeActiveSupportCombatants = 435,

	 * CPED_CONFIG_FLAG_StayInDefensiveAreaWhenInVehicle = 436,

	 * CPED_CONFIG_FLAG_DontShoutTargetPosition = 437,

	 * CPED_CONFIG_FLAG_DisableHelmetArmor = 438,

	 * CPED_CONFIG_FLAG_CreatedByConcealedPlayer = 439,

	 * CPED_CONFIG_FLAG_PermanentlyDisablePotentialToBeWalkedIntoResponse = 440,

	 * CPED_CONFIG_FLAG_PreventVehExitDueToInvalidWeapon = 441,

	 * CPED_CONFIG_FLAG_IgnoreNetSessionFriendlyFireCheckForAllowDamage = 442,

	 * CPED_CONFIG_FLAG_DontLeaveCombatIfTargetPlayerIsAttackedByPolice = 443,

	 * CPED_CONFIG_FLAG_CheckLockedBeforeWarp = 444,

	 * CPED_CONFIG_FLAG_DontShuffleInVehicleToMakeRoom = 445,

	 * CPED_CONFIG_FLAG_GiveWeaponOnGetup = 446,

	 * CPED_CONFIG_FLAG_DontHitVehicleWithProjectiles = 447,

	 * CPED_CONFIG_FLAG_DisableForcedEntryForOpenVehiclesFromTryLockedDoor = 448,

	 * CPED_CONFIG_FLAG_FiresDummyRockets = 449,

	 * CPED_CONFIG_FLAG_PedIsArresting = 450,

	 * CPED_CONFIG_FLAG_IsDecoyPed = 451,

	 * CPED_CONFIG_FLAG_HasEstablishedDecoy = 452,

	 * CPED_CONFIG_FLAG_BlockDispatchedHelicoptersFromLanding = 453,

	 * CPED_CONFIG_FLAG_DontCryForHelpOnStun = 454,

	 * CPED_CONFIG_FLAG_HitByTranqWeapon = 455,

	 * CPED_CONFIG_FLAG_CanBeIncapacitated = 456,

	 * CPED_CONFIG_FLAG_ForcedAimFromArrest = 457,

	 * CPED_CONFIG_FLAG_DontChangeTargetFromMelee = 458,

	 * _0x4376ABF2 = 459,

	 * CPED_CONFIG_FLAG_RagdollFloatsIndefinitely = 460,

	 * CPED_CONFIG_FLAG_BlockElectricWeaponDamage = 461,

	 * _0x262A3B8E = 462,

	 * _0x1AA79A25 = 463,

	 * }
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_PED_CONFIG_FLAG](?\_0x1913FE4CBF41C463).**
	 */
	@:native("SetPedConfigFlag")
	static function setPedConfigFlag(ped:Dynamic, flagId:Int, value:Bool):Dynamic;

	/**
	 * Sets the various freemode face features, e.g. nose length, chin shape.

	 * **Indexes (From 0 to 19):**

	 * Parentheses indicate morph scale/direction as in (-1.0 to 1.0)
	 * 
	 * *   **0**: Nose Width (Thin/Wide)
	 * *   **1**: Nose Peak (Up/Down)
	 * *   **2**: Nose Length (Long/Short)
	 * *   **3**: Nose Bone Curveness (Crooked/Curved)
	 * *   **4**: Nose Tip (Up/Down)
	 * *   **5**: Nose Bone Twist (Left/Right)
	 * *   **6**: Eyebrow (Up/Down)
	 * *   **7**: Eyebrow (In/Out)
	 * *   **8**: Cheek Bones (Up/Down)
	 * *   **9**: Cheek Sideways Bone Size (In/Out)
	 * *   **10**: Cheek Bones Width (Puffed/Gaunt)
	 * *   **11**: Eye Opening (Both) (Wide/Squinted)
	 * *   **12**: Lip Thickness (Both) (Fat/Thin)
	 * *   **13**: Jaw Bone Width (Narrow/Wide)
	 * *   **14**: Jaw Bone Shape (Round/Square)
	 * *   **15**: Chin Bone (Up/Down)
	 * *   **16**: Chin Bone Length (In/Out or Backward/Forward)
	 * *   **17**: Chin Bone Shape (Pointed/Square)
	 * *   **18**: Chin Hole (Chin Bum)
	 * *   **19**: Neck Thickness (Thin/Thick)

	 *     **Note:**

	 *     You may need to call [`SetPedHeadBlendData`](#\_0x9414E18B9434C2FE) prior to calling this native in order for it to work.
	 * 
	 * **This is the server-side RPC native equivalent of the client native [\_SET_PED_FACE_FEATURE](?\_0x71A5C1DBA060049E).**
	 */
	@:native("SetPedFaceFeature")
	static function SetPedFaceFeature(ped:Dynamic, index:Int, scale:Float):Dynamic;

	/**
	 * Parameter `p1` does not seem to be used or referenced in game binaries.\
	 * **Note:** When called for networked entities, a `CRemoveAllWeaponsEvent` will be created per request.
	 * 
	 * **This is the server-side RPC native equivalent of the client native [REMOVE_ALL_PED_WEAPONS](?\_0xF25DF915FA38C5F3).**
	 */
	@:native("RemoveAllPedWeapons")
	static function removeAllPedWeapons(ped:Dynamic, p1:Bool):Dynamic;

	/**
	 * SET_CURRENT_PED_WEAPON
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_CURRENT_PED_WEAPON](?\_0xADF692B254977C0C).**
	 */
	@:native("SetCurrentPedWeapon")
	static function setCurrentPedWeapon(ped:Dynamic, weaponHash:Int, bForceInHand:Bool):Dynamic;

	/**
	 * Create a blip that by default is red (enemy), you can use [SET_BLIP_AS_FRIENDLY](#\_0xC6F43D0E) to make it blue (friend).\
	 * Can be used for objects, vehicles and peds.

	 * Example of enemy:

	 * ![enemy](https://i.imgur.com/LIizV6S.png)

	 * Example of friend:

	 * ![friend](https://i.imgur.com/XrCuvZP.png)
	 * 
	 * **This is the server-side RPC native equivalent of the client native [ADD_BLIP_FOR_ENTITY](?\_0x5CDE92C702A8FCE7).**
	 */
	@:native("AddBlipForEntity")
	static function addBlipForEntity(entity:Dynamic):Dynamic;

	/**
	 * Tells a ped to go to a coord by any means.
	 * 
	 * ```cpp
	 * enum eDrivingMode {

	 * DF_StopForCars = 1,

	 * DF_StopForPeds = 2,

	 * DF_SwerveAroundAllCars = 4,

	 * DF_SteerAroundStationaryCars = 8,

	 * DF_SteerAroundPeds = 16,

	 * DF_SteerAroundObjects = 32,

	 * DF_DontSteerAroundPlayerPed = 64,

	 * DF_StopAtLights = 128,

	 * DF_GoOffRoadWhenAvoiding = 256,

	 * DF_DriveIntoOncomingTraffic = 512,

	 * DF_DriveInReverse = 1024,

	 * // If pathfinding fails, cruise randomly instead of going on a straight line

	 * DF_UseWanderFallbackInsteadOfStraightLine = 2048,

	 * DF_AvoidRestrictedAreas = 4096,

	 * // These only work on MISSION_CRUISE

	 * DF_PreventBackgroundPathfinding = 8192,

	 * DF_AdjustCruiseSpeedBasedOnRoadSpeed = 16384,

	 * DF_UseShortCutLinks =  262144,

	 * DF_ChangeLanesAroundObstructions = 524288,

	 * // cruise tasks ignore this anyway--only used for goto's

	 * DF_UseSwitchedOffNodes =  2097152,

	 * // if you're going to be primarily driving off road

	 * DF_PreferNavmeshRoute =  4194304,

	 * // Only works for planes using MISSION_GOTO, will cause them to drive along the ground instead of fly

	 * DF_PlaneTaxiMode =  8388608,

	 * DF_ForceStraightLine = 16777216,

	 * DF_UseStringPullingAtJunctions = 33554432,

	 * DF_AvoidHighways = 536870912,

	 * DF_ForceJoinInRoadDirection = 1073741824,

	 * // Standard driving mode. stops for cars, peds, and lights, goes around stationary obstructions

	 * DRIVINGMODE_STOPFORCARS = 786603, // DF_StopForCars|DF_StopForPeds|DF_SteerAroundObjects|DF_SteerAroundStationaryCars|DF_StopAtLights|DF_UseShortCutLinks|DF_ChangeLanesAroundObstructions,		// Obey lights too

	 * // Like the above, but doesn't steer around anything in its way - will only wait instead.

	 * DRIVINGMODE_STOPFORCARS_STRICT = 262275, // DF_StopForCars|DF_StopForPeds|DF_StopAtLights|DF_UseShortCutLinks, // Doesn't deviate an inch.

	 * // Default "alerted" driving mode. drives around everything, doesn't obey lights

	 * DRIVINGMODE_AVOIDCARS = 786469, // DF_SwerveAroundAllCars|DF_SteerAroundObjects|DF_UseShortCutLinks|DF_ChangeLanesAroundObstructions|DF_StopForCars,

	 * // Very erratic driving. difference between this and AvoidCars is that it doesn't use the brakes at ALL to help with steering

	 * DRIVINGMODE_AVOIDCARS_RECKLESS = 786468, // DF_SwerveAroundAllCars|DF_SteerAroundObjects|DF_UseShortCutLinks|DF_ChangeLanesAroundObstructions,

	 * // Smashes through everything

	 * DRIVINGMODE_PLOUGHTHROUGH = 262144, // DF_UseShortCutLinks

	 * // Drives normally except for the fact that it ignores lights

	 * DRIVINGMODE_STOPFORCARS_IGNORELIGHTS = 786475, // DF_StopForCars|DF_SteerAroundStationaryCars|DF_StopForPeds|DF_SteerAroundObjects|DF_UseShortCutLinks|DF_ChangeLanesAroundObstructions

	 * // Try to swerve around everything, but stop for lights if necessary

	 * DRIVINGMODE_AVOIDCARS_OBEYLIGHTS = 786597, // DF_SwerveAroundAllCars|DF_StopAtLights|DF_SteerAroundObjects|DF_UseShortCutLinks|DF_ChangeLanesAroundObstructions|DF_StopForCars

	 * // Swerve around cars, be careful around peds, and stop for lights

	 * DRIVINGMODE_AVOIDCARS_STOPFORPEDS_OBEYLIGHTS = 786599 // DF_SwerveAroundAllCars|DF_StopAtLights|DF_StopForPeds|DF_SteerAroundObjects|DF_UseShortCutLinks|DF_ChangeLanesAroundObstructions|DF_StopForCars

	 * };
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [TASK_GO_TO_COORD_ANY_MEANS](?\_0x5BC448CB78FA3E88).**
	 */
	@:native("TaskGoToCoordAnyMeans")
	static function taskGoToCoordAnyMeans(ped:Dynamic, x:Float, y:Float, z:Float, fMoveBlendRatio:Float, vehicle:Dynamic, bUseLongRangeVehiclePathing:Bool, drivingFlags:Int, fMaxRangeToShootTargets:Float):Dynamic;

	/**
	 * ```
	 * Flags:

	 * SPC_AMBIENT_SCRIPT = (1 << 1),

	 * SPC_CLEAR_TASKS = (1 << 2),

	 * SPC_REMOVE_FIRES = (1 << 3),

	 * SPC_REMOVE_EXPLOSIONS = (1 << 4),

	 * SPC_REMOVE_PROJECTILES = (1 << 5),

	 * SPC_DEACTIVATE_GADGETS = (1 << 6),

	 * SPC_REENABLE_CONTROL_ON_DEATH = (1 << 7),

	 * SPC_LEAVE_CAMERA_CONTROL_ON = (1 << 8),

	 * SPC_ALLOW_PLAYER_DAMAGE = (1 << 9),

	 * SPC_DONT_STOP_OTHER_CARS_AROUND_PLAYER = (1 << 10),

	 * SPC_PREVENT_EVERYBODY_BACKOFF = (1 << 11),

	 * SPC_ALLOW_PAD_SHAKE = (1 << 12)

	 * See: https://alloc8or.re/gta5/doc/enums/eSetPlayerControlFlag.txt
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_PLAYER_CONTROL](?\_0x8D32347D6D4C40A2).**
	 */
	@:native("SetPlayerControl")
	static function setPlayerControl(player:Dynamic, bHasControl:Bool, flags:Int):Dynamic;

	/**
	 * Used for freemode (online) characters.

	 * Indices:
	 * 
	 * 1.  black
	 * 2.  very light blue/green
	 * 3.  dark blue
	 * 4.  brown
	 * 5.  darker brown
	 * 6.  light brown
	 * 7.  blue
	 * 8.  light blue
	 * 9.  pink
	 * 10. yellow
	 * 11. purple
	 * 12. black
	 * 13. dark green
	 * 14. light brown
	 * 15. yellow/black pattern
	 * 16. light colored spiral pattern
	 * 17. shiny red
	 * 18. shiny half blue/half red
	 * 19. half black/half light blue
	 * 20. white/red perimter
	 * 21. green snake
	 * 22. red snake
	 * 23. dark blue snake
	 * 24. dark yellow
	 * 25. bright yellow
	 * 26. all black
	 * 27. red small pupil
	 * 28. devil blue/black
	 * 29. white small pupil
	 * 30. glossed over
	 * 
	 * **This is the server-side RPC native equivalent of the client native [\_SET_PED_EYE_COLOR](?\_0x50B56988B170AFDF).**
	 */
	@:native("SetPedEyeColor")
	static function SetPedEyeColor(ped:Dynamic, index:Int):Dynamic;

	/**
	 * ```
	 * p2 often set to 1000.0 in the decompiled scripts.
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_BODY_HEALTH](?\_0xB77D05AC8C78AADB).**
	 */
	@:native("SetVehicleBodyHealth")
	static function setVehicleBodyHealth(vehicle:Dynamic, value:Float):Dynamic;

	/**
	 * Creates an object (prop) with the specified model at the specified position, offset on the Z axis by the radius of the object's model.

	 * This object will initially be owned by the creating script as a mission entity, and the model should be loaded already (e.g. using REQUEST_MODEL).
	 * 
	 * **This is the server-side RPC native equivalent of the client native [CREATE_OBJECT](?\_0x509D5878EB39E842).**
	 */
	@:native("CreateObject")
	static function createObject(modelHash:Int, x:Float, y:Float, z:Float, isNetwork:Bool, netMissionEntity:Bool, doorFlag:Bool):Dynamic;

	/**
	 * ```
	 * Sets the armor of the specified ped.

	 * ped: The Ped to set the armor of.

	 * amount: A value between 0 and 100 indicating the value to set the Ped's armor to.
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_PED_ARMOUR](?\_0xCEA04D83135264CC).**
	 */
	@:native("SetPedArmour")
	static function setPedArmour(ped:Dynamic, amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 * 
	 * Warp a ped into a vehicle.

	 * **Note**: It's better to use [`TASK_ENTER_VEHICLE`](#\_0xC20E50AA46D09CA8) with the flag "warp" flag instead of this native.
	 * 
	 * **This is the server-side RPC native equivalent of the client native [TASK_WARP_PED_INTO_VEHICLE](?\_0x9A7D091411C5F684).**
	 */
	@:native("TaskWarpPedIntoVehicle")
	static function taskWarpPedIntoVehicle(ped:Dynamic, vehicle:Dynamic, seatIndex:Int):Dynamic;

	/**
	 * ```
	 * Makes the specified ped attack the target ped.

	 * p2 should be 0

	 * p3 should be 16
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [TASK_COMBAT_PED](?\_0xF166E48407BAC484).**
	 */
	@:native("TaskCombatPed")
	static function taskCombatPed(ped:Dynamic, targetPed:Dynamic, p2:Int, p3:Int):Dynamic;

	/**
	 * Locks the doors of a specified vehicle to a defined lock state, affecting how players and NPCs can interact with the vehicle.
	 * 
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 * 
	 * ```cpp
	 * enum eVehicleLockState {

	 * // No specific lock state, vehicle behaves according to the game's default settings.

	 * VEHICLELOCK_NONE = 0,

	 * // Vehicle is fully unlocked, allowing free entry by players and NPCs.

	 * VEHICLELOCK_UNLOCKED = 1,

	 * // Vehicle is locked, preventing entry by players and NPCs.

	 * VEHICLELOCK_LOCKED = 2,

	 * // Vehicle locks out only players, allowing NPCs to enter.

	 * VEHICLELOCK_LOCKOUT_PLAYER_ONLY = 3,

	 * // Vehicle is locked once a player enters, preventing others from entering.

	 * VEHICLELOCK_LOCKED_PLAYER_INSIDE = 4,

	 * // Vehicle starts in a locked state, but may be unlocked through game events.

	 * VEHICLELOCK_LOCKED_INITIALLY = 5,

	 * // Forces the vehicle's doors to shut and lock.

	 * VEHICLELOCK_FORCE_SHUT_DOORS = 6,

	 * // Vehicle is locked but can still be damaged.

	 * VEHICLELOCK_LOCKED_BUT_CAN_BE_DAMAGED = 7,

	 * // Vehicle is locked, but its trunk/boot remains unlocked.

	 * VEHICLELOCK_LOCKED_BUT_BOOT_UNLOCKED = 8,

	 * // Vehicle is locked and does not allow passengers, except for the driver.

	 * VEHICLELOCK_LOCKED_NO_PASSENGERS = 9,

	 * // Vehicle is completely locked, preventing entry entirely, even if previously inside.

	 * VEHICLELOCK_CANNOT_ENTER = 10

	 * };
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_DOORS_LOCKED](?\_0xB664292EAECF7FA6).**
	 */
	@:native("SetVehicleDoorsLocked")
	static function setVehicleDoorsLocked(vehicle:Dynamic, doorLockStatus:Int):Dynamic;

	/**
	 * Sets the selected vehicle's colors to their default value (specific variant specified using the colorCombination parameter).

	 * Range of possible values for colorCombination is currently unknown, I couldn't find where these values are stored either (Disquse's guess was vehicles.meta but I haven't seen it in there.)
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_COLOUR_COMBINATION](?\_0x33E8CD3322E2FE31).**
	 */
	@:native("SetVehicleColourCombination")
	static function setVehicleColourCombination(vehicle:Dynamic, colorCombination:Int):Dynamic;

	/**
	 * ```
	 * This native removes a specified weapon from your selected ped.

	 * Weapon Hashes: pastebin.com/0wwDZgkF

	 * Example:

	 * C#:

	 * Function.Call(Hash.REMOVE_WEAPON_FROM_PED, Game.Player.Character, 0x99B507EA);

	 * C++:

	 * WEAPON::REMOVE_WEAPON_FROM_PED(PLAYER::PLAYER_PED_ID(), 0x99B507EA);

	 * The code above removes the knife from the player.
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [REMOVE_WEAPON_FROM_PED](?\_0x4899CB088EDF59B8).**
	 */
	@:native("RemoveWeaponFromPed")
	static function removeWeaponFromPed(ped:Dynamic, weaponHash:Int):Dynamic;

	/**
	 * PED::SET_PED_RESET_FLAG(PLAYER::PLAYER_PED_ID(), 240, 1);

	 * Known values:
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_PED_RESET_FLAG](?\_0xC1E8A365BF3B29F2).**
	 */
	@:native("SetPedResetFlag")
	static function setPedResetFlag(ped:Dynamic, flagId:Int, doReset:Bool):Dynamic;

	/**
	 * SET_VEHICLE_ALARM
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_ALARM](?\_0xCDE5E70C1DDB954C).**
	 */
	@:native("SetVehicleAlarm")
	static function setVehicleAlarm(vehicle:Dynamic, state:Bool):Dynamic;

	/**
	 * ```
	 * This executes at the same as speed as PLAYER::SET_PLAYER_WANTED_LEVEL(player, 0, false);

	 * PLAYER::GET_PLAYER_WANTED_LEVEL(player); executes in less than half the time. Which means that it's worth first checking if the wanted level needs to be cleared before clearing. However, this is mostly about good code practice and can important in other situations. The difference in time in this example is negligible.
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [CLEAR_PLAYER_WANTED_LEVEL](?\_0xB302540597885499).**
	 */
	@:native("ClearPlayerWantedLevel")
	static function clearPlayerWantedLevel(player:Dynamic):Dynamic;

	/**
	 * See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#\_0x93D9BD300D7789E5)
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_DOOR_BROKEN](?\_0xD4D4F6A4AB575A33).**
	 */
	@:native("SetVehicleDoorBroken")
	static function setVehicleDoorBroken(vehicle:Dynamic, doorIndex:Int, deleteDoor:Bool):Dynamic;

	/**
	 * SET_VEHICLE_NUMBER_PLATE_TEXT
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_NUMBER_PLATE_TEXT](?\_0x95A88F0B409CDA47).**
	 */
	@:native("SetVehicleNumberPlateText")
	static function setVehicleNumberPlateText(vehicle:Dynamic, plateText:String):Dynamic;

	/**
	 * [Animations list](https://alexguirre.github.io/animations-list/)
	 * 
	 * ```cpp
	 * enum eScriptedAnimFlags

	 * {

	 * AF_LOOPING = 1,

	 * AF_HOLD_LAST_FRAME = 2,

	 * AF_REPOSITION_WHEN_FINISHED = 4,

	 * AF_NOT_INTERRUPTABLE = 8,

	 * AF_UPPERBODY = 16,

	 * AF_SECONDARY = 32,

	 * AF_REORIENT_WHEN_FINISHED = 64,

	 * AF_ABORT_ON_PED_MOVEMENT = 128,

	 * AF_ADDITIVE = 256,

	 * AF_TURN_OFF_COLLISION = 512,

	 * AF_OVERRIDE_PHYSICS = 1024,

	 * AF_IGNORE_GRAVITY = 2048,

	 * AF_EXTRACT_INITIAL_OFFSET = 4096,

	 * AF_EXIT_AFTER_INTERRUPTED = 8192,

	 * AF_TAG_SYNC_IN = 16384,

	 * AF_TAG_SYNC_OUT = 32768,

	 * AF_TAG_SYNC_CONTINUOUS = 65536,

	 * AF_FORCE_START = 131072,

	 * AF_USE_KINEMATIC_PHYSICS = 262144,

	 * AF_USE_MOVER_EXTRACTION = 524288,

	 * AF_HIDE_WEAPON = 1048576,

	 * AF_ENDS_IN_DEAD_POSE = 2097152,

	 * AF_ACTIVATE_RAGDOLL_ON_COLLISION = 4194304,

	 * AF_DONT_EXIT_ON_DEATH = 8388608,

	 * AF_ABORT_ON_WEAPON_DAMAGE = 16777216,

	 * AF_DISABLE_FORCED_PHYSICS_UPDATE = 33554432,

	 * AF_PROCESS_ATTACHMENTS_ON_START = 67108864,

	 * AF_EXPAND_PED_CAPSULE_FROM_SKELETON = 134217728,

	 * AF_USE_ALTERNATIVE_FP_ANIM = 268435456,

	 * AF_BLENDOUT_WRT_LAST_FRAME = 536870912,

	 * AF_USE_FULL_BLENDING = 1073741824

	 * }
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [TASK_PLAY_ANIM](?\_0xEA47FE3719165B94).**
	 */
	@:native("TaskPlayAnim")
	static function taskPlayAnim(ped:Dynamic, animDictionary:String, animationName:String, blendInSpeed:Float, blendOutSpeed:Float, duration:Int, flag:Int, playbackRate:Float, lockX:Bool, lockY:Bool, lockZ:Bool):Dynamic;

	/**
	 * SET_PLAYER_WANTED_LEVEL
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_PLAYER_WANTED_LEVEL](?\_0x39FF19C64EF7DA5B).**
	 */
	@:native("SetPlayerWantedLevel")
	static function setPlayerWantedLevel(player:Dynamic, wantedLevel:Int, delayedResponse:Bool):Dynamic;

	/**
	 * ```
	 * Flags from decompiled scripts:

	 * 0 = normal exit and closes door.

	 * 1 = normal exit and closes door.

	 * 16 = teleports outside, door kept closed.  (This flag does not seem to work for the front seats in buses, NPCs continue to exit normally)

	 * 64 = normal exit and closes door, maybe a bit slower animation than 0.

	 * 256 = normal exit but does not close the door.

	 * 4160 = ped is throwing himself out, even when the vehicle is still.

	 * 262144 = ped moves to passenger seat first, then exits normally

	 * Others to be tried out: 320, 512, 131072.
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [TASK_LEAVE_VEHICLE](?\_0xD3DBCE61A490BE02).**
	 */
	@:native("TaskLeaveVehicle")
	static function taskLeaveVehicle(ped:Dynamic, vehicle:Dynamic, flags:Int):Dynamic;

	/**
	 * ```
	 * OverlayID ranges from 0 to 12, index from 0 to _GET_NUM_OVERLAY_VALUES(overlayID)-1, and opacity from 0.0 to 1.0.

	 * overlayID       Part                  Index, to disable

	 * 0               Blemishes             0 - 23, 255

	 * 1               Facial Hair           0 - 28, 255

	 * 2               Eyebrows              0 - 33, 255

	 * 3               Ageing                0 - 14, 255

	 * 4               Makeup                0 - 74, 255

	 * 5               Blush                 0 - 6, 255

	 * 6               Complexion            0 - 11, 255

	 * 7               Sun Damage            0 - 10, 255

	 * 8               Lipstick              0 - 9, 255

	 * 9               Moles/Freckles        0 - 17, 255

	 * 10              Chest Hair            0 - 16, 255

	 * 11              Body Blemishes        0 - 11, 255

	 * 12              Add Body Blemishes    0 - 1, 255
	 * ```
	 * 
	 * **Note:**

	 * You may need to call [`SetPedHeadBlendData`](#\_0x9414E18B9434C2FE) prior to calling this native in order for it to work.
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_PED_HEAD_OVERLAY](?\_0x48F44967FA05CC1E).**
	 */
	@:native("SetPedHeadOverlay")
	static function setPedHeadOverlay(ped:Dynamic, overlayID:Int, index:Int, opacity:Float):Dynamic;

	/**
	 * ```
	 * Firing Pattern Hash Information: https://pastebin.com/Px036isB
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [TASK_SHOOT_AT_COORD](?\_0x46A6CC01E0826106).**
	 */
	@:native("TaskShootAtCoord")
	static function taskShootAtCoord(ped:Dynamic, x:Float, y:Float, z:Float, duration:Int, firingPattern:Int):Dynamic;

	/**
	 * Removes the blip from your map.

	 * **Note:** This function only works on the script that created the blip, if you wish to remove blips created by other scripts, see [`SET_THIS_SCRIPT_CAN_REMOVE_BLIPS_CREATED_BY_ANY_SCRIPT`](#\_0xB98236CAAECEF897).
	 * 
	 * **This is the server-side RPC native equivalent of the client native [REMOVE_BLIP](?\_0x86A652570E5F25DD).**
	 */
	@:native("RemoveBlip")
	static function removeBlip(blip:Dynamic):Dynamic;

	/**
	 * Sets the displayed sprite for a specific blip.

	 * There's a [list of sprites](https://docs.fivem.net/docs/game-references/blips/) on the FiveM documentation site.
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_BLIP_SPRITE](?\_0xDF735600A4696DAF).**
	 */
	@:native("SetBlipSprite")
	static function setBlipSprite(blip:Dynamic, spriteId:Int):Dynamic;

	/**
	 * TASK_EVERYONE_LEAVE_VEHICLE
	 * 
	 * **This is the server-side RPC native equivalent of the client native [TASK_EVERYONE_LEAVE_VEHICLE](?\_0x7F93691AB4B92272).**
	 */
	@:native("TaskEveryoneLeaveVehicle")
	static function taskEveryoneLeaveVehicle(vehicle:Dynamic):Dynamic;

	/**
	 * TASK_REACT_AND_FLEE_PED
	 * 
	 * **This is the server-side RPC native equivalent of the client native [TASK_REACT_AND_FLEE_PED](?\_0x72C896464915D1B1).**
	 */
	@:native("TaskReactAndFleePed")
	static function taskReactAndFleePed(ped:Dynamic, fleeTarget:Dynamic):Dynamic;

	/**
	 * ```
	 * Note that the third parameter(denoted as z) is "up and down" with positive numbers encouraging upwards movement.
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_ENTITY_VELOCITY](?\_0x1C99BB7B6E96D16F).**
	 */
	@:native("SetEntityVelocity")
	static function setEntityVelocity(entity:Dynamic, x:Float, y:Float, z:Float):Dynamic;

	/**
	 * For more info and the list of faceIDs please refer to [this](https://gtaforums.com/topic/858970-all-gtao-face-ids-pedset-ped-head-blend-data-explained) topic. Note that the Skin and Shape IDs are shared. This native will use this same list for both Skin and Shape IDs.

	 * **Other information:**

	 * IDs start at zero and go Male Non-DLC, Female Non-DLC, Male DLC, and Female DLC.

	 * This native function is often called prior to calling natives such as:
	 * 
	 * *   [`SetPedHairColor`](#\_0xA23FE32C)
	 * *   [`SetPedHeadOverlayColor`](#\_0x78935A27)
	 * *   [`SetPedHeadOverlay`](#\_0xD28DBA90)
	 * *   [`SetPedFaceFeature`](#\_0x6C8D4458)
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_PED_HEAD_BLEND_DATA](?\_0x9414E18B9434C2FE).**
	 */
	@:native("SetPedHeadBlendData")
	static function setPedHeadBlendData(ped:Dynamic, shapeFirstID:Int, shapeSecondID:Int, shapeThirdID:Int, skinFirstID:Int, skinSecondID:Int, skinThirdID:Int, shapeMix:Float, skinMix:Float, thirdMix:Float, isParent:Bool):Dynamic;

	/**
	 * Sets the dirt level of the passed vehicle.
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_DIRT_LEVEL](?\_0x79D3B596FE44EE8B).**
	 */
	@:native("SetVehicleDirtLevel")
	static function setVehicleDirtLevel(vehicle:Dynamic, dirtLevel:Float):Dynamic;

	/**
	 * ```
	 * p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_CUSTOM_SECONDARY_COLOUR](?\_0x36CED73BFED89754).**
	 */
	@:native("SetVehicleCustomSecondaryColour")
	static function setVehicleCustomSecondaryColour(vehicle:Dynamic, r:Int, g:Int, b:Int):Dynamic;

	/**
	 * colorPrimary & colorSecondary are the paint indexes for the vehicle.

	 * For a list of valid paint indexes, view: pastebin.com/pwHci0xK
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_COLOURS](?\_0x4F1D4BE3A7F24601).**
	 */
	@:native("SetVehicleColours")
	static function setVehicleColours(vehicle:Dynamic, colorPrimary:Int, colorSecondary:Int):Dynamic;

	/**
	 * ```
	 * Example:

	 * TASK::TASK_DRIVE_BY(l_467[1/ *22* /], PLAYER::PLAYER_PED_ID(), 0, 0.0, 0.0, 2.0, 300.0, 100, 0, ${firing_pattern_burst_fire_driveby});

	 * Needs working example. Doesn't seem to do anything.

	 * I marked p2 as targetVehicle as all these shooting related tasks seem to have that in common.

	 * I marked p6 as distanceToShoot as if you think of GTA's Logic with the native SET_VEHICLE_SHOOT natives, it won't shoot till it gets within a certain distance of the target.

	 * I marked p7 as pedAccuracy as it seems it's mostly 100 (Completely Accurate), 75, 90, etc. Although this could be the ammo count within the gun, but I highly doubt it. I will change this comment once I find out if it's ammo count or not.
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [TASK_DRIVE_BY](?\_0x2F8AF0E82773A171).**
	 */
	@:native("TaskDriveBy")
	static function taskDriveBy(driverPed:Dynamic, targetPed:Dynamic, targetVehicle:Dynamic, targetX:Float, targetY:Float, targetZ:Float, distanceToShoot:Float, pedAccuracy:Int, p8:Bool, firingPattern:Int):Dynamic;

	/**
	 * Flags are the same flags used in [`TASK_LEAVE_VEHICLE`](#\_0xD3DBCE61A490BE02)
	 * 
	 * **This is the server-side RPC native equivalent of the client native [TASK_LEAVE_ANY_VEHICLE](?\_0x504D54DF3F6F2247).**
	 */
	@:native("TaskLeaveAnyVehicle")
	static function taskLeaveAnyVehicle(ped:Dynamic, p1:Int, flags:Int):Dynamic;

	/**
	 * ```
	 * //this part of the code is to determine at which entity the player is aiming, for example if you want to create a mod where you give orders to peds

	 * Entity aimedentity;

	 * Player player = PLAYER::PLAYER_ID();

	 * PLAYER::_GET_AIMED_ENTITY(player, &aimedentity);

	 * //bg is an array of peds

	 * TASK::TASK_SHOOT_AT_ENTITY(bg[i], aimedentity, 5000, MISC::GET_HASH_KEY("FIRING_PATTERN_FULL_AUTO"));

	 * in practical usage, getting the entity the player is aiming at and then task the peds to shoot at the entity, at a button press event would be better.

	 * Firing Pattern Hash Information: https://pastebin.com/Px036isB
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [TASK_SHOOT_AT_ENTITY](?\_0x08DA95E8298AE772).**
	 */
	@:native("TaskShootAtEntity")
	static function taskShootAtEntity(entity:Dynamic, target:Dynamic, duration:Int, firingPattern:Int):Dynamic;

	/**
	 * ```
	 * Sets Ped Default Clothes
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_PED_DEFAULT_COMPONENT_VARIATION](?\_0x45EEE61580806D63).**
	 */
	@:native("SetPedDefaultComponentVariation")
	static function setPedDefaultComponentVariation(ped:Dynamic):Dynamic;

	/**
	 * ```cpp
	 * enum eNMFallType {

	 * TYPE_FROM_HIGH = 0,

	 * TYPE_OVER_WALL = 1,

	 * TYPE_DOWN_STAIRS = 2,

	 * TYPE_DIE_TYPES = 3,

	 * TYPE_DIE_FROM_HIGH = 4,

	 * TYPE_DIE_OVER_WALL = 5,

	 * TYPE_DIE_DOWN_STAIRS = 6

	 * }
	 * ```
	 * 
	 * ```
	 * Return variable is never used in R*'s scripts.

	 * Not sure what p2 does. It seems like it would be a time judging by it's usage in R*'s scripts, but didn't seem to affect anything in my testings.

	 * x, y, and z are coordinates, most likely to where the ped will fall.

	 * p7 is probably the force of the fall, but untested, so I left the variable name the same.

	 * p8 to p13 are always 0f in R*'s scripts.

	 * (Simplified) Example of the usage of the function from R*'s scripts:

	 * ped::set_ped_to_ragdoll_with_fall(ped, 1500, 2000, 1, -entity::get_entity_forward_vector(ped), 1f, 0f, 0f, 0f, 0f, 0f, 0f);
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_PED_TO_RAGDOLL_WITH_FALL](?\_0xD76632D99E4966C8).**
	 */
	@:native("SetPedToRagdollWithFall")
	static function setPedToRagdollWithFall(ped:Dynamic, minTime:Int, maxTime:Int, nFallType:Int, dirX:Float, dirY:Float, dirZ:Float, fGroundHeight:Float, grab1X:Float, grab1Y:Float, grab1Z:Float, grab2X:Float, grab2Y:Float, grab2Z:Float):Dynamic;

	/**
	 * ```
	 * The entity will move towards the target until time is over (duration) or get in target's range (distance). p5 and p6 are unknown, but you could leave p5 = 1073741824 or 100 or even 0 (didn't see any difference but on the decompiled scripts, they use 1073741824 mostly) and p6 = 0

	 * Note: I've only tested it on entity -> ped and target -> vehicle. It could work differently on other entities, didn't try it yet.

	 * Example: TASK::TASK_GO_TO_ENTITY(pedHandle, vehicleHandle, 5000, 4.0, 100, 1073741824, 0)

	 * Ped will run towards the vehicle for 5 seconds and stop when time is over or when he gets 4 meters(?) around the vehicle (with duration = -1, the task duration will be ignored).
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [TASK_GO_TO_ENTITY](?\_0x6A071245EB0D1882).**
	 */
	@:native("TaskGoToEntity")
	static function taskGoToEntity(entity:Dynamic, target:Dynamic, duration:Int, distance:Float, speed:Float, p5:Float, p6:Int):Dynamic;

	/**
	 * Similar in functionality to [`TASK_PLAY_ANIM`](#\_0xEA47FE3719165B94), except the position and rotation parameters let you specify the initial position and rotation of the task. The ped is teleported to the position specified.

	 * [Animations list](https://alexguirre.github.io/animations-list/)
	 * 
	 * **This is the server-side RPC native equivalent of the client native [TASK_PLAY_ANIM_ADVANCED](?\_0x83CDB10EA29B370B).**
	 */
	@:native("TaskPlayAnimAdvanced")
	static function taskPlayAnimAdvanced(ped:Dynamic, animDictionary:String, animationName:String, posX:Float, posY:Float, posZ:Float, rotX:Float, rotY:Float, rotZ:Float, blendInSpeed:Float, blendOutSpeed:Float, duration:Int, flag:Dynamic, animTime:Float, p14:Dynamic, p15:Dynamic):Dynamic;

	/**
	 * TASK_GO_STRAIGHT_TO_COORD
	 * 
	 * **This is the server-side RPC native equivalent of the client native [TASK_GO_STRAIGHT_TO_COORD](?\_0xD76B57B44F1E6F8B).**
	 */
	@:native("TaskGoStraightToCoord")
	static function taskGoStraightToCoord(ped:Dynamic, x:Float, y:Float, z:Float, speed:Float, timeout:Int, targetHeading:Float, distanceToSlide:Float):Dynamic;

	/**
	 * ```
	 * p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [SET_VEHICLE_CUSTOM_PRIMARY_COLOUR](?\_0x7141766F91D15BEA).**
	 */
	@:native("SetVehicleCustomPrimaryColour")
	static function setVehicleCustomPrimaryColour(vehicle:Dynamic, r:Int, g:Int, b:Int):Dynamic;

	/**
	 * ```
	 * speed 1.0 = walk, 2.0 = run

	 * p5 1 = normal, 3 = teleport to vehicle, 8 = normal/carjack ped from seat, 16 = teleport directly into vehicle

	 * p6 is always 0
	 * ```
	 * 
	 * **This is the server-side RPC native equivalent of the client native [TASK_ENTER_VEHICLE](?\_0xC20E50AA46D09CA8).**
	 */
	@:native("TaskEnterVehicle")
	static function taskEnterVehicle(ped:Dynamic, vehicle:Dynamic, timeout:Int, seatIndex:Int, speed:Float, flag:Int, p6:Dynamic):Dynamic;

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
	@:native("AddConvarChangeListener")
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
	@:native("AddStateBagChangeHandler")
	static function addStateBagChangeHandler(keyFilter:String, bagFilter:String, handler:haxe.Constraints.Function):Int;

	/**
	 * 
	 */
	@:native("DoesTrainStopAtStations")
	static function doesTrainStopAtStations(train:Dynamic):Bool;

	/**
	 * Cancels the currently executing event.
	 */
	@:native("CancelEvent")
	static function cancelEvent():Dynamic;

	/**
	 * 
	 */
	@:native("DeleteFunctionReference")
	static function deleteFunctionReference(referenceIdentity:String):Dynamic;

	/**
	 * 
	 */
	@:native("DuplicateFunctionReference")
	static function duplicateFunctionReference(referenceIdentity:String):String;

	/**
	 * Internal function for ensuring an entity has a state bag.
	 */
	@:native("EnsureEntityStateBag")
	static function ensureEntityStateBag(entity:Dynamic):Dynamic;

	/**
	 * Depending on your use case you may need to use `add_acl resource.<your_resource_name> command.<command_name> allow` to use this native in your resource.
	 */
	@:native("ExecuteCommand")
	static function executeCommand(commandString:String):Dynamic;

	/**
	 * Returns the name of the currently executing resource.
	 */
	@:native("GetCurrentResourceName")
	static function getCurrentResourceName():String;

	/**
	 * Can be used to get a console variable of type `char*`, for example a string.
	 */
	@:native("GetConvar")
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
	@:native("GetEntitiesInRadius")
	static function getEntitiesInRadius(x:Float, y:Float, z:Float, radius:Float, entityType:Int, sortByDistance:Bool, models:Dynamic):Dynamic;

	/**
	 * Returns the entity handle for the specified state bag name. For use with [ADD_STATE_BAG_CHANGE_HANDLER](#\_0x5BA35AAF).
	 */
	@:native("GetEntityFromStateBagName")
	static function getEntityFromStateBagName(bagName:String):Dynamic;

	/**
	 * Can be used to get a console variable casted back to `bool`.
	 */
	@:native("GetConvarBool")
	static function getConvarBool(varName:String, defaultValue:Bool):Bool;

	/**
	 * Can be used to get a console variable casted back to `int` (an integer value).
	 */
	@:native("GetConvarInt")
	static function getConvarInt(varName:String, default_:Int):Int;

	/**
	 * An internal function for converting a stack trace object to a string.
	 */
	@:native("FormatStackTrace")
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
	@:native("GetGameBuildNumber")
	static function getGameBuildNumber():Int;

	/**
	 * This will have floating point inaccuracy.
	 */
	@:native("GetConvarFloat")
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
	@:native("GetGameName")
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
	@:native("GetGamePool")
	static function getGamePool(poolName:String):Dynamic;

	/**
	 * 
	 */
	@:native("GetInvokingResource")
	static function getInvokingResource():String;

	/**
	 * Gets the amount of metadata values with the specified key existing in the specified resource's manifest.

	 * See also: [Resource manifest](https://docs.fivem.net/docs/scripting-reference/resource-manifest/)
	 */
	@:native("GetNumResourceMetadata")
	static function getNumResourceMetadata(resourceName:String, metadataKey:String):Int;

	/**
	 * On the server this will return the players source, on the client it will return the player handle.
	 */
	@:native("GetPlayerFromStateBagName")
	static function getPlayerFromStateBagName(bagName:String):Int;

	/**
	 * 
	 */
	@:native("GetNumResources")
	static function getNumResources():Int;

	/**
	 * 
	 */
	@:native("GetInstanceId")
	static function getInstanceId():Int;

	/**
	 * 
	 */
	@:native("GetResourceByFindIndex")
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
	@:native("GetRegisteredCommands")
	static function getRegisteredCommands():Dynamic;

	/**
	 * A getter for [SET_PLAYER_WEAPON_DEFENSE_MODIFIER](#\_0x2D83BC011CA14A3C).
	 */
	@:native("GetPlayerWeaponDefenseModifier")
	static function getPlayerWeaponDefenseModifier(playerId:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetTrainState")
	static function getTrainState(train:Dynamic):Int;

	/**
	 * A getter for [SET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER](#\_0x4A3DC7ECCC321032).
	 */
	@:native("GetPlayerMeleeWeaponDamageModifier")
	static function getPlayerMeleeWeaponDamageModifier(playerId:Dynamic):Float;

	/**
	 * A getter for [SET_PLAYER_WEAPON_DAMAGE_MODIFIER](#\_0xCE07B9F7817AADA3).
	 */
	@:native("GetPlayerWeaponDamageModifier")
	static function getPlayerWeaponDamageModifier(playerId:Dynamic):Float;

	/**
	 * Returns the value of a state bag key.
	 */
	@:native("GetStateBagValue")
	static function getStateBagValue(bagName:String, key:String):Dynamic;

	/**
	 * 
	 */
	@:native("GetTrainTrackIndex")
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
	@:native("GetResourceCommands")
	static function getResourceCommands(resource:String):Dynamic;

	/**
	 * A getter for [\_SET_PLAYER_WEAPON_DEFENSE_MODIFIER\_2](#\_0xBCFDE9EDE4CF27DC).
	 */
	@:native("GetPlayerWeaponDefenseModifier_2")
	static function getPlayerWeaponDefenseModifier2(playerId:Dynamic):Float;

	/**
	 * Gets the metadata value at a specified key/index from a resource's manifest.

	 * See also: [Resource manifest](https://docs.fivem.net/docs/scripting-reference/resource-manifest/)
	 */
	@:native("GetResourceMetadata")
	static function getResourceMetadata(resourceName:String, metadataKey:String, index:Int):String;

	/**
	 * Returns the current state of the specified resource.
	 */
	@:native("GetResourceState")
	static function getResourceState(resourceName:String):String;

	/**
	 * 
	 */
	@:native("GetStateBagKeys")
	static function getStateBagKeys(bagName:String):Dynamic;

	/**
	 * Gets the direction the train is facing
	 */
	@:native("GetTrainDirection")
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
	@:native("GetVehicleType")
	static function getVehicleType(vehicle:Dynamic):String;

	/**
	 * Gets the trains desired speed.
	 */
	@:native("GetTrainCruiseSpeed")
	static function getTrainCruiseSpeed(train:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetVehicleSteeringAngle")
	static function getVehicleSteeringAngle(vehicle:Dynamic):Float;

	/**
	 * 
	 */
	@:native("GetVehicleHandbrake")
	static function getVehicleHandbrake(vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("IsAceAllowed")
	static function isAceAllowed(object:String):Bool;

	/**
	 * A getter for [FREEZE_ENTITY_POSITION](#\_0x428CA6DBD1094446).
	 */
	@:native("IsEntityPositionFrozen")
	static function isEntityPositionFrozen(entity:Dynamic):Dynamic;

	/**
	 * Gets whether or not this is the CitizenFX server.
	 */
	@:native("IsDuplicityVersion")
	static function isDuplicityVersion():Bool;

	/**
	 * 
	 */
	@:native("IsVehicleEngineStarting")
	static function isVehicleEngineStarting(vehicle:Dynamic):Bool;

	/**
	 * Reads the contents of a text file in a specified resource.

	 * If executed on the client, this file has to be included in `files` in the resource manifest.

	 * Example: `local data = LoadResourceFile("devtools", "data.json")`
	 */
	@:native("LoadResourceFile")
	static function loadResourceFile(resourceName:String, fileName:String):String;

	/**
	 * 
	 */
	@:native("IsPrincipalAceAllowed")
	static function isPrincipalAceAllowed(principal:String, object:String):Bool;

	/**
	 * Scope exit for profiler.
	 */
	@:native("ProfilerExitScope")
	static function profilerExitScope():Dynamic;

	/**
	 * 
	 */
	@:native("RemoveConvarChangeListener")
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
	@:native("RegisterCommand")
	static function registerCommand(commandName:String, handler:haxe.Constraints.Function, restricted:Bool):Dynamic;

	/**
	 * Returns the owner ID of the specified entity.
	 */
	@:native("NetworkGetEntityOwner")
	static function networkGetEntityOwner(entity:Dynamic):Int;

	/**
	 * Returns true if the profiler is active.
	 */
	@:native("ProfilerIsRecording")
	static function profilerIsRecording():Bool;

	/**
	 * Scope entry for profiler.
	 */
	@:native("ProfilerEnterScope")
	static function profilerEnterScope(scopeName:String):Dynamic;

	/**
	 * An internal function which allows the current resource's HLL script runtimes to receive state for the specified event.
	 */
	@:native("RegisterResourceAsEventHandler")
	static function registerResourceAsEventHandler(eventName:String):Dynamic;

	/**
	 * **Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.
	 * 
	 * Removes a handler for changes to a state bag.
	 */
	@:native("RemoveStateBagChangeHandler")
	static function removeStateBagChangeHandler(cookie:Int):Dynamic;

	/**
	 * Internal function for setting a state bag value.
	 */
	@:native("SetStateBagValue")
	static function setStateBagValue(bagName:String, keyName:String, valueData:String, valueLength:Int, replicated:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("StateBagHasKey")
	static function stateBagHasKey(bagName:String, key:String):Dynamic;

	/**
	 * The backing function for TriggerEvent.
	 */
	@:native("TriggerEventInternal")
	static function triggerEventInternal(eventName:String, eventPayload:String, payloadLength:Int):Dynamic;

	/**
	 * Returns whether or not the currently executing event was canceled.
	 */
	@:native("WasEventCanceled")
	static function wasEventCanceled():Bool;

	/**
	 * Nonsynchronous [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
	 */
	@:native("SetResourceKvpFloatNoSync")
	static function setResourceKvpFloatNoSync(key:String, value:Float):Dynamic;

	/**
	 * A getter for [SET_RESOURCE_KVP](#\_0x21C7A35B).
	 */
	@:native("GetResourceKvpString")
	static function getResourceKvpString(key:String):String;

	/**
	 * Nonsynchronous [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
	 */
	@:native("SetResourceKvpIntNoSync")
	static function setResourceKvpIntNoSync(key:String, value:Int):Dynamic;

	/**
	 * A setter for [GET_RESOURCE_KVP_STRING](#\_0x5240DA5A).
	 */
	@:native("SetResourceKvp")
	static function setResourceKvp(key:String, value:String):Dynamic;

	/**
	 * 
	 */
	@:native("EndFindKvp")
	static function endFindKvp(handle:Int):Dynamic;

	/**
	 * A getter for [SET_RESOURCE_KVP_FLOAT](#\_0x9ADD2938).
	 */
	@:native("GetResourceKvpFloat")
	static function getResourceKvpFloat(key:String):Float;

	/**
	 * 
	 */
	@:native("DeleteResourceKvp")
	static function deleteResourceKvp(key:String):Dynamic;

	/**
	 * 
	 */
	@:native("FindKvp")
	static function findKvp(handle:Int):String;

	/**
	 * A setter for [GET_RESOURCE_KVP_FLOAT](#\_0x35BDCEEA).
	 */
	@:native("SetResourceKvpFloat")
	static function setResourceKvpFloat(key:String, value:Float):Dynamic;

	/**
	 * Nonsynchronous [SET_RESOURCE_KVP](#\_0x21C7A35B) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
	 */
	@:native("SetResourceKvpNoSync")
	static function setResourceKvpNoSync(key:String, value:String):Dynamic;

	/**
	 * Nonsynchronous [DELETE_RESOURCE_KVP](#\_0x7389B5DF) operation; see [FLUSH_RESOURCE_KVP](#\_0x5240DA5A).
	 */
	@:native("DeleteResourceKvpNoSync")
	static function deleteResourceKvpNoSync(key:String):Dynamic;

	/**
	 * 
	 */
	@:native("StartFindKvp")
	static function startFindKvp(prefix:String):Int;

	/**
	 * A getter for [SET_RESOURCE_KVP_INT](#\_0x6A2B1E8).
	 */
	@:native("GetResourceKvpInt")
	static function getResourceKvpInt(key:String):Int;

	/**
	 * A setter for [GET_RESOURCE_KVP_INT](#\_0x557B586A).
	 */
	@:native("SetResourceKvpInt")
	static function setResourceKvpInt(key:String, value:Int):Dynamic;

}
