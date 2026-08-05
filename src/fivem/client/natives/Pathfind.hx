package fivem.client.natives;

@:native("_G")
extern class Pathfind {
	/**
	 * Creates a navmesh blocking object, vehicles will avoid driving through this area.
	 * 
	 * Only 32 blocking objects may exist at a given time and must be manually managed. See [`REMOVE_NAVMESH_BLOCKING_OBJECT`](#\_0x46399A7895957C0E) and [`onResourceStop`](https://docs.fivem.net/docs/scripting-reference/events/list/onResourceStop/)
	 * 
	 * ```cpp
	 * enum eBlockingObjectFlags {
	 *     // Default Flag
	 *     BLOCKING_OBJECT_DEFAULT = 0,
	 *     // Blocking object will block wander paths
	 *     BLOCKING_OBJECT_WANDERPATH = 1,
	 *     // Blocking object will block (regular) shortest-paths
	 *     BLOCKING_OBJECT_SHORTESTPATH = 2,
	 *     // Blocking object will block flee paths
	 *     BLOCKING_OBJECT_FLEEPATH = 4,
	 *     // Blocking object will block all paths
	 *     BLOCKING_OBJECT_ALLPATHS = 7,
	 * }
	 * ```
	 */
	@:native("AddNavmeshBlockingObject")
	static function addNavmeshBlockingObject(x:Float, y:Float, z:Float, width:Float, length:Float, height:Float, heading:Float, bPermanent:Bool, flags:Int):Dynamic;

	/**
	 * 
	 */
	@:native("AddNavmeshRequiredRegion")
	static function addNavmeshRequiredRegion(x:Float, y:Float, radius:Float):Dynamic;

	/**
	 * 
	 */
	@:native("AreAllNavmeshRegionsLoaded")
	static function areAllNavmeshRegionsLoaded():Bool;

	/**
	 * 
	 */
	@:native("AreNodesLoadedForArea")
	static function areNodesLoadedForArea(x1:Float, y1:Float, x2:Float, y2:Float):Bool;

	/**
	 * 
	 */
	@:native("DoesNavmeshBlockingObjectExist")
	static function doesNavmeshBlockingObjectExist(p0:Dynamic):Bool;

	/**
	 * Calculates the travel distance between a set of points.
	 * Doesn't seem to correlate with distance on gps sometimes.
	 * 
	 * This function returns the value 100000.0 over long distances, seems to be a failure mode result, potentially occurring when not all path nodes are loaded into pathfind.
	 */
	@:native("CalculateTravelDistanceBetweenPoints")
	static function calculateTravelDistanceBetweenPoints(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float):Float;

	/**
	 * Finds an edge (node connection to another node) that satisfies the specified criteria.
	 */
	@:native("GetClosestRoad")
	static function getClosestRoad(x:Float, y:Float, z:Float, minimumEdgeLength:Float, minimumLaneCount:Int, srcNode:Dynamic, targetNode:Dynamic, laneCountForward:Dynamic, laneCountBackward:Dynamic, width:Dynamic, onlyMajorRoads:Bool):Dynamic;

	/**
	 * Use this if you want to completely disable a large area of navmesh.
	 * For smaller areas, use [`ADD_NAVMESH_BLOCKING_OBJECT`](#\_0xFCD5C8E06E502F5A) instead.
	 */
	@:native("DisableNavmeshInArea")
	static function disableNavmeshInArea(posMinX:Float, posMinY:Float, posMinZ:Float, posMaxX:Float, posMaxY:Float, posMaxZ:Float, bDisable:Dynamic):Dynamic;

	/**
	 * ```
	 * p3 is 0 in the only game script occurrence (trevor3) but 1 doesn't seem to make a difference
	 * distToNxJunction seems to be the distance in metres * 10.0f
	 * direction:
	 * 0 = This happens randomly during the drive for seemingly no reason but if you consider that this native is only used in trevor3, it seems to mean "Next frame, stop whatever's being said and tell the player the direction."
	 * 1 = Route is being calculated or the player is going in the wrong direction
	 * 2 = Please Proceed the Highlighted Route
	 * 3 = In (distToNxJunction) Turn Left
	 * 4 = In (distToNxJunction) Turn Right
	 * 5 = In (distToNxJunction) Keep Straight
	 * 6 = In (distToNxJunction) Turn Sharply To The Left
	 * 7 = In (distToNxJunction) Turn Sharply To The Right
	 * 8 = Route is being recalculated or the navmesh is confusing. This happens randomly during the drive but consistently at {2044.0358, 2996.6116, 44.9717} if you face towards the bar and the route needs you to turn right. In that particular case, it could be a bug with how the turn appears to be 270 deg. CCW instead of "right." Either way, this seems to be the engine saying "I don't know the route right now."
	 * return value set to 0 always
	 * ```
	 */
	@:native("GenerateDirectionsToCoord")
	static function generateDirectionsToCoord(x:Float, y:Float, z:Float, p3:Bool, direction:Dynamic, vehicle:Dynamic, distToNxJunction:Dynamic):Int;

	/**
	 * Clears a disabled GPS route area from a certain index previously set using [`SET_GPS_DISABLED_ZONE_AT_INDEX`](#\_0xD0BC1C6FB18EE154).
	 */
	@:native("ClearGpsDisabledZoneAtIndex")
	static function clearGpsDisabledZoneAtIndex(index:Int):Dynamic;

	/**
	 * 
	 */
	@:native("GetGpsBlipRouteFound")
	static function getGpsBlipRouteFound():Bool;

	/**
	 * ```
	 * Get the closest vehicle node to a given position, unknown1 = 3.0, unknown2 = 0  
	 * ```
	 */
	@:native("GetClosestMajorVehicleNode")
	static function getClosestMajorVehicleNode(x:Float, y:Float, z:Float, outPosition:Dynamic, unknown1:Float, unknown2:Int):Bool;

	/**
	 * ```
	 * FYI: When falling through the map (or however you got under it) you will respawn when your player ped's height is <= -200.0 meters (I think you all know this) and when in a vehicle you will actually respawn at the closest vehicle node.
	 * ----------
	 * Vector3 nodePos;
	 * GET_CLOSEST_VEHICLE_NODE(x,y,z,&nodePos,...)
	 * p4 is either 0, 1 or 8. 1 means any path/road. 0 means node in the middle of the closest main (asphalt) road.
	 * p5, p6 are always the same:
	 * 0x40400000 (3.0), 0
	 * p5 can also be 100.0 and p6 can be 2.5:
	 * PATHFIND::GET_CLOSEST_VEHICLE_NODE(a_0, &v_5, v_9, 100.0, 2.5)
	 * Known node types: simple path/asphalt road, only asphalt road, water, under the map at always the same coords.
	 * The node types follows a pattern. For example, every fourth node is of the type water i.e. 3, 7, 11, 15, 19, 23, 27, 31, 35, 39... 239. Could not see any difference between nodes within certain types.
	 * Starting at 2, every fourth node is under the map, always same coords.
	 * Same with only asphalt road (0, 4, 8, etc) and simple path/asphalt road (1, 5, 9, etc).
	 * gtaforums.com/topic/843561-pathfind-node-types
	 * ```
	 */
	@:native("GetClosestVehicleNode")
	static function getClosestVehicleNode(x:Float, y:Float, z:Float, outPosition:Dynamic, nodeType:Int, p5:Float, p6:Float):Bool;

	/**
	 * 
	 */
	@:native("GetGpsBlipRouteLength")
	static function getGpsBlipRouteLength():Int;

	/**
	 * ```
	 * p5, p6 and p7 seems to be about the same as p4, p5 and p6 for GET_CLOSEST_VEHICLE_NODE. p6 and/or p7 has something to do with finding a node on the same path/road and same direction(at least for this native, something to do with the heading maybe). Edit this when you find out more.  
	 * p5 is either 1 or 12. 1 means any path/road. 12, 8, 0 means node in the middle of the closest main (asphalt) road.  
	 * p6 is always 3.0  
	 * p7 is always 0.  
	 * Known node types: simple path/asphalt road, only asphalt road, water, under the map at always the same coords.   
	 * The node types follows a pattern. For example, every fourth node is of the type water i.e. 3, 7, 11, 15, 19, 23, 27, 31, 35, 39... 239. Could not see any difference between nodes within certain types.   
	 * Starting at 2, every fourth node is under the map, always same coords.  
	 * Same with only asphalt road (0, 4, 8, etc) and simple path/asphalt road (1, 5, 9, etc).  
	 * gtaforums.com/topic/843561-pathfind-node-types  
	 * Example of usage, moving vehicle to closest path/road:  
	 * Vector3 coords = ENTITY::GET_ENTITY_COORDS(playerVeh, true);  
	 * Vector3 closestVehicleNodeCoords;   
	 * float roadHeading;   
	 * PATHFIND::GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(coords.x, coords.y, coords.z, &closestVehicleNodeCoords, &roadHeading, 1, 3, 0);   
	 * ENTITY::SET_ENTITY_HEADING(playerVeh, roadHeading);  
	 * ENTITY::SET_ENTITY_COORDS(playerVeh, closestVehicleNodeCoords.x, closestVehicleNodeCoords.y, closestVehicleNodeCoords.z, 1, 0, 0, 1);  
	 * VEHICLE::SET_VEHICLE_ON_GROUND_PROPERLY(playerVeh);  
	 * ------------------------------------------------------------------  
	 * C# Example (ins1de) : pastebin.com/fxtMWAHD  
	 * ```
	 */
	@:native("GetClosestVehicleNodeWithHeading")
	static function getClosestVehicleNodeWithHeading(x:Float, y:Float, z:Float, outPosition:Dynamic, outHeading:Dynamic, nodeType:Int, p6:Float, p7:Int):Bool;

	/**
	 * ```
	 * Returns CGameWorldHeightMap's minimum Z among all grid nodes that intersect with the specified rectangle.
	 * ```
	 */
	@:native("GetHeightmapBottomZForArea")
	static function GetHeightmapBottomZForArea(x1:Float, y1:Float, x2:Float, y2:Float):Float;

	/**
	 * ```
	 * Returns CGameWorldHeightMap's minimum Z value at specified point (grid node).
	 * ```
	 */
	@:native("GetHeightmapBottomZForPosition")
	static function GetHeightmapBottomZForPosition(x:Float, y:Float):Float;

	/**
	 * Gets the next zone that has been disabled using SET_GPS_DISABLED_ZONE_AT_INDEX.
	 * 
	 * ```
	 * NativeDB Removed Parameter 1: int index
	 * ```
	 */
	@:native("GetNextGpsDisabledZoneIndex")
	static function getNextGpsDisabledZoneIndex(index:Int):Int;

	/**
	 * ```
	 * Returns CGameWorldHeightMap's maximum Z value at specified point (grid node).
	 * ```
	 */
	@:native("GetHeightmapTopZForPosition")
	static function GetHeightmapTopZForPosition(x:Float, y:Float):Float;

	/**
	 * ```
	 * Returns the id.  
	 * ```
	 */
	@:native("GetNthClosestVehicleNodeId")
	static function getNthClosestVehicleNodeId(x:Float, y:Float, z:Float, nth:Int, nodetype:Int, p5:Float, p6:Float):Int;

	/**
	 * ```
	 * Returns CGameWorldHeightMap's maximum Z among all grid nodes that intersect with the specified rectangle.
	 * ```
	 */
	@:native("GetHeightmapTopZForArea")
	static function GetHeightmapTopZForArea(x1:Float, y1:Float, x2:Float, y2:Float):Float;

	/**
	 * ```
	 * See gtaforums.com/topic/843561-pathfind-node-types for node type info. 0 = paved road only, 1 = any road, 3 = water  
	 * p10 always equal 0x40400000  
	 * p11 always equal 0  
	 * ```
	 */
	@:native("GetNthClosestVehicleNodeFavourDirection")
	static function getNthClosestVehicleNodeFavourDirection(x:Float, y:Float, z:Float, desiredX:Float, desiredY:Float, desiredZ:Float, nthClosest:Int, outPosition:Dynamic, outHeading:Dynamic, nodetype:Int, p10:Float, p11:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetNthClosestVehicleNode")
	static function getNthClosestVehicleNode(x:Float, y:Float, z:Float, nthClosest:Int, outPosition:Dynamic, unknown1:Dynamic, unknown2:Dynamic, unknown3:Dynamic):Bool;

	/**
	 * Get the nth closest vehicle node with its heading and total lane count.
	 * If you need specific forward and backward lane counts use [GET_CLOSEST_ROAD](#\_0x132F52BBA570FE92)
	 * 
	 * ```cpp
	 * enum eNodeFlags {
	 * 	NONE = 0,
	 * 	INCLUDE_SWITCHED_OFF_NODES = 1,
	 * 	INCLUDE_BOAT_NODES = 2,
	 * 	IGNORE_SLIPLANES = 4,
	 * 	IGNORE_SWITCHED_OFF_DEAD_ENDS = 8,
	 * }
	 * ```
	 */
	@:native("GetNthClosestVehicleNodeWithHeading")
	static function getNthClosestVehicleNodeWithHeading(x:Float, y:Float, z:Float, nthClosest:Int, outPosition:Dynamic, heading:Dynamic, totalLanes:Dynamic, searchFlags:Int, zMeasureMult:Float, zTolerance:Float):Bool;

	/**
	 * 
	 */
	@:native("GetNthClosestVehicleNodeIdWithHeading")
	static function getNthClosestVehicleNodeIdWithHeading(x:Float, y:Float, z:Float, nthClosest:Int, outPosition:Dynamic, outHeading:Dynamic, p6:Dynamic, p7:Float, p8:Float):Int;

	/**
	 * 
	 */
	@:native("GetNumNavmeshesExistingInArea")
	static function getNumNavmeshesExistingInArea(posMinX:Float, posMinY:Float, posMinZ:Float, posMaxX:Float, posMaxY:Float, posMaxZ:Float):Int;

	/**
	 * 
	 */
	@:native("GetRoadBoundaryUsingHeading")
	static function getRoadBoundaryUsingHeading(x:Float, y:Float, z:Float, heading:Float, outPosition:Dynamic):Bool;

	/**
	 * Native to get a position along current player GPS route using supplied slot.
	 * This native was previously named `GET_GPS_WAYPOINT_ROUTE_END`, but its named changed.
	 * 
	 * ```cpp
	 * enum eGpsSlotType {
	 * 	GPS_SLOT_WAYPOINT = 0,
	 * 	GPS_SLOT_RADAR_BLIP = 1,
	 * 	GPS_SLOT_DISCRETE = 2
	 * }
	 * ```
	 */
	@:native("GetPosAlongGpsTypeRoute")
	static function getPosAlongGpsTypeRoute(result:Dynamic, bStartAtPlayerPos:Bool, fDistanceAlongRoute:Float, slotType:Int):Bool;

	/**
	 * ```
	 * Returns true when the node is Offroad. Alleys, some dirt roads, and carparks return true.
	 * Normal roads where plenty of Peds spawn will return false
	 * ```
	 */
	@:native("GetVehicleNodeIsSwitchedOff")
	static function getVehicleNodeIsSwitchedOff(nodeID:Int):Bool;

	/**
	 * 
	 */
	@:native("GetPointOnRoadSide")
	static function GetPointOnRoadSide(x:Float, y:Float, z:Float, p3:Int, outPosition:Dynamic):Bool;

	/**
	 * ```
	 * Returns false for nodes that aren't used for GPS routes.
	 * Example:
	 * Nodes in Fort Zancudo and LSIA are false
	 * ```
	 */
	@:native("GetVehicleNodeIsGpsAllowed")
	static function getVehicleNodeIsGpsAllowed(nodeID:Int):Bool;

	/**
	 * ```
	 * Determines the name of the street which is the closest to the given coordinates.
	 * x,y,z - the coordinates of the street
	 * streetName - returns a hash to the name of the street the coords are on
	 * crossingRoad - if the coordinates are on an intersection, a hash to the name of the crossing road
	 * Note: the names are returned as hashes, the strings can be returned using the function HUD::GET_STREET_NAME_FROM_HASH_KEY.
	 * ```
	 */
	@:native("GetStreetNameAtCoord")
	static function getStreetNameAtCoord(x:Float, y:Float, z:Float, streetName:Dynamic, crossingRoad:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetRandomVehicleNode")
	static function getRandomVehicleNode(x:Float, y:Float, z:Float, radius:Float, p4:Bool, p5:Bool, p6:Bool, outPosition:Dynamic, nodeId:Dynamic):Bool;

	/**
	 * ```
	 * IS_*
	 * ```
	 */
	@:native("IsNavmeshRequiredRegionOwnedByAnyThread")
	static function IsNavmeshRequiredRegionOwnedByAnyThread():Bool;

	/**
	 * ```
	 * Calling this with an invalid node id, will crash the game.
	 * Note that IS_VEHICLE_NODE_ID_VALID simply checks if nodeId is not zero. It does not actually ensure that the id is valid.
	 * Eg. IS_VEHICLE_NODE_ID_VALID(1) will return true, but will crash when calling GET_VEHICLE_NODE_POSITION().
	 * ```
	 */
	@:native("GetVehicleNodePosition")
	static function getVehicleNodePosition(nodeId:Int, outPosition:Dynamic):Dynamic;

	/**
	 * Gets the density and flags of the closest node to the specified position.\
	 * Density is a value between 0 and 15, indicating how busy the road is.
	 * 
	 * ```cpp
	 * enum eVehicleNodeProperties {
	 * 	OFF_ROAD = 1 << 0,
	 * 	ON_PLAYERS_ROAD =  1 << 1,
	 * 	NO_BIG_VEHICLES = 1 << 2,
	 * 	SWITCHED_OFF = 1 << 3,
	 * 	TUNNEL_OR_INTERIOR = 1 << 4,
	 * 	LEADS_TO_DEAD_END = 1 << 5,
	 * 	HIGHWAY = 1 << 6,
	 * 	JUNCTION = 1 << 7,
	 * 	TRAFFIC_LIGHT = 1 << 8,
	 * 	GIVE_WAY = 1 << 9,
	 * 	WATER = 1 << 10,
	 * }
	 * ```
	 */
	@:native("GetVehicleNodeProperties")
	static function getVehicleNodeProperties(x:Float, y:Float, z:Float, density:Dynamic, flags:Dynamic):Bool;

	/**
	 * ```
	 * This native has been removed in v1180.  
	 * ```
	 */
	@:native("LoadAllPathNodes")
	static function loadAllPathNodes(keepInMemory:Bool):Bool;

	/**
	 * ```
	 * Flags are:
	 * 1 = 1 = B02_IsFootpath
	 * 2 = 4 = !B15_InteractionUnk
	 * 4 = 0x20 = !B14_IsInterior
	 * 8 = 0x40 = !B07_IsWater
	 * 16 = 0x200 = B17_IsFlatGround
	 * When onGround == true outPosition is a position located on the nearest pavement.
	 * When a safe coord could not be found the result of a function is false and outPosition == Vector3.Zero.
	 * In the scripts these flags are used: 0, 14, 12, 16, 20, 21, 28. 0 is most commonly used, then 16.
	 * 16 works for me, 0 crashed the script.
	 * ```
	 */
	@:native("GetSafeCoordForPed")
	static function getSafeCoordForPed(x:Float, y:Float, z:Float, onGround:Bool, outPosition:Dynamic, flags:Int):Bool;

	/**
	 * ```
	 * Returns true if the id is non zero.  
	 * ```
	 */
	@:native("IsVehicleNodeIdValid")
	static function isVehicleNodeIdValid(vehicleNodeId:Int):Bool;

	/**
	 * Activates Cayo Perico path nodes if passed `1`. GPS navigation will start working, maybe more stuff will change, not sure. It seems if you try to unload (pass `0`) when close to the island, your game might crash.
	 * 
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("SetAiGlobalPathNodesType")
	static function SetAiGlobalPathNodesType(type:Int):Dynamic;

	/**
	 * ```
	 * Returns whether navmesh for the region is loaded. The region is a rectangular prism defined by it's top left deepest corner to it's bottom right shallowest corner.  
	 * If you can re-word this so it makes more sense, please do. I'm horrible with words sometimes...  
	 * ```
	 */
	@:native("IsNavmeshLoadedInArea")
	static function isNavmeshLoadedInArea(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float):Bool;

	/**
	 * 
	 */
	@:native("SetGpsDisabledZone")
	static function setGpsDisabledZone(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float):Dynamic;

	/**
	 * ```
	 * Used internally for long range tasks
	 * ```
	 */
	@:native("RequestPathsPreferAccurateBoundingstruct")
	static function RequestPathsPreferAccurateBoundingstruct(x1:Float, y1:Float, x2:Float, y2:Float):Bool;

	/**
	 * ```
	 * Gets a value indicating whether the specified position is on a road.  
	 * The vehicle parameter is not implemented (ignored).  
	 * ```
	 */
	@:native("IsPointOnRoad")
	static function isPointOnRoad(x:Float, y:Float, z:Float, vehicle:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("RemoveNavmeshBlockingObject")
	static function removeNavmeshBlockingObject(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 7: Any p6
	 * ```
	 */
	@:native("SetPedPathsBackToOriginal")
	static function setPedPathsBackToOriginal(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic):Dynamic;

	/**
	 * ```
	 * Toggles a global boolean, name is probably a hash collision but describes its functionality.
	 * ```
	 */
	@:native("SetAllPathsCacheBoundingstruct")
	static function SetAllPathsCacheBoundingstruct(toggle:Bool):Dynamic;

	/**
	 * Disables the GPS route displayed on the minimap while within a certain zone (area). When in a disabled zone and creating a waypoint, the GPS route is not shown on the minimap until you are outside of the zone. When disabled, the direct distance is shown on minimap opposed to distance to travel. Seems to only work before setting a waypoint.
	 * 
	 * You can clear the disabled zone with CLEAR_GPS_DISABLED_ZONE_AT_INDEX.
	 * 
	 * **Setting a waypoint at the same coordinate:**
	 * 
	 * Disabled Zone: <https://i.imgur.com/P9VUuxM.png>
	 * 
	 * Enabled Zone (normal): <https://i.imgur.com/BPi24aw.png>
	 */
	@:native("SetGpsDisabledZoneAtIndex")
	static function setGpsDisabledZoneAtIndex(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, index:Int):Dynamic;

	/**
	 * 
	 */
	@:native("RemoveNavmeshRequiredRegions")
	static function removeNavmeshRequiredRegions():Dynamic;

	/**
	 * 
	 */
	@:native("SetIgnoreNoGpsFlag")
	static function setIgnoreNoGpsFlag(toggle:Bool):Dynamic;

	/**
	 * ```
	 * See: SET_BLIP_ROUTE
	 * ```
	 */
	@:native("SetIgnoreSecondaryRouteNodes")
	static function SetIgnoreSecondaryRouteNodes(toggle:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("SetAmbientPedRangeMultiplierThisFrame")
	static function setAmbientPedRangeMultiplierThisFrame(multiplier:Float):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 8: Any p7
	 * ```
	 */
	@:native("SetPedPathsInArea")
	static function setPedPathsInArea(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, unknown:Bool):Dynamic;

	/**
	 * ```
	 * missing a last parameter int p6  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 7: Any p6
	 * ```
	 */
	@:native("SetRoadsBackToOriginal")
	static function setRoadsBackToOriginal(p0:Float, p1:Float, p2:Float, p3:Float, p4:Float, p5:Float):Dynamic;

	/**
	 * unknown3 is related to `SEND_SCRIPT_WORLD_STATE_EVENT > CNetworkRoadNodeWorldStateData` in networked environments.
	 * 
	 * See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
	 */
	@:native("SetRoadsInAngledArea")
	static function setRoadsInAngledArea(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, width:Float, unknown1:Bool, unknown2:Bool, unknown3:Bool):Dynamic;

	/**
	 * When this is set to false, all nodes in the area get disabled.
	 * 
	 * `GET_VEHICLE_NODE_IS_SWITCHED_OFF` returns true afterwards.
	 * 
	 * If it's true,
	 * 
	 * `GET_VEHICLE_NODE_IS_SWITCHED_OFF` returns false.
	 */
	@:native("SetRoadsInArea")
	static function setRoadsInArea(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, nodeEnabled:Bool, unknown2:Bool):Dynamic;

	/**
	 * See [`IS_POINT_IN_ANGLED_AREA`](#\_0x2A70BAE8883E4C81) for the definition of an angled area.
	 * 
	 * ```
	 * NativeDB Added Parameter 8: Any p7
	 * 
	 * bool p7 - always 1  
	 * ```
	 */
	@:native("SetRoadsBackToOriginalInAngledArea")
	static function setRoadsBackToOriginalInAngledArea(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, width:Float):Dynamic;

	/**
	 * 
	 */
	@:native("UpdateNavmeshBlockingObject")
	static function updateNavmeshBlockingObject(object:Dynamic, posX:Float, posY:Float, posZ:Float, scaleX:Float, scaleY:Float, scaleZ:Float, heading:Float, flags:Int):Dynamic;

}
