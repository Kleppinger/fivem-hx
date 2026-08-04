package fivem.client.natives;

@:native("_G")
extern class Datafile {
	/**
	 * 
	 */
	@:native("DATAARRAY_ADD_BOOL")
	static function dataarrayAddBool(arrayData:Dynamic, value:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("DATAARRAY_ADD_FLOAT")
	static function dataarrayAddFloat(arrayData:Dynamic, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("DATAARRAY_ADD_DICT")
	static function dataarrayAddDict(arrayData:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("DATAARRAY_ADD_INT")
	static function dataarrayAddInt(arrayData:Dynamic, value:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DATAARRAY_GET_DICT")
	static function dataarrayGetDict(arrayData:Dynamic, arrayIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DATAARRAY_ADD_STRING")
	static function dataarrayAddString(arrayData:Dynamic, value:String):Dynamic;

	/**
	 * 
	 */
	@:native("DATAARRAY_ADD_VECTOR")
	static function dataarrayAddVector(arrayData:Dynamic, valueX:Float, valueY:Float, valueZ:Float):Dynamic;

	/**
	 * 
	 */
	@:native("DATAARRAY_GET_BOOL")
	static function dataarrayGetBool(arrayData:Dynamic, arrayIndex:Int):Bool;

	/**
	 * 
	 */
	@:native("DATAARRAY_GET_COUNT")
	static function dataarrayGetCount(arrayData:Dynamic):Int;

	/**
	 * 
	 */
	@:native("DATAARRAY_GET_FLOAT")
	static function dataarrayGetFloat(arrayData:Dynamic, arrayIndex:Int):Float;

	/**
	 * 
	 */
	@:native("DATAARRAY_GET_INT")
	static function dataarrayGetInt(arrayData:Dynamic, arrayIndex:Int):Int;

	/**
	 * 
	 */
	@:native("DATAARRAY_GET_VECTOR")
	static function dataarrayGetVector(arrayData:Dynamic, arrayIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DATADICT_GET_ARRAY")
	static function datadictGetArray(objectData:Dynamic, key:String):Dynamic;

	/**
	 * 
	 */
	@:native("DATADICT_CREATE_ARRAY")
	static function datadictCreateArray(objectData:Dynamic, key:String):Dynamic;

	/**
	 * 
	 */
	@:native("DATADICT_GET_FLOAT")
	static function datadictGetFloat(objectData:Dynamic, key:String):Float;

	/**
	 * 
	 */
	@:native("DATAARRAY_GET_STRING")
	static function dataarrayGetString(arrayData:Dynamic, arrayIndex:Int):String;

	/**
	 * ```
	 * Types:  
	 * 1 = Boolean  
	 * 2 = Integer  
	 * 3 = Float  
	 * 4 = String  
	 * 5 = Vector3  
	 * 6 = Object  
	 * 7 = Array  
	 * ```
	 */
	@:native("DATAARRAY_GET_TYPE")
	static function dataarrayGetType(arrayData:Dynamic, arrayIndex:Int):Int;

	/**
	 * 
	 */
	@:native("DATADICT_GET_INT")
	static function datadictGetInt(objectData:Dynamic, key:String):Int;

	/**
	 * ```
	 * Types:  
	 * 1 = Boolean  
	 * 2 = Integer  
	 * 3 = Float  
	 * 4 = String  
	 * 5 = Vector3  
	 * 6 = Object  
	 * 7 = Array  
	 * ```
	 */
	@:native("DATADICT_GET_TYPE")
	static function datadictGetType(objectData:Dynamic, key:String):Int;

	/**
	 * 
	 */
	@:native("DATADICT_CREATE_DICT")
	static function datadictCreateDict(objectData:Dynamic, key:String):Dynamic;

	/**
	 * 
	 */
	@:native("DATADICT_GET_BOOL")
	static function datadictGetBool(objectData:Dynamic, key:String):Bool;

	/**
	 * 
	 */
	@:native("DATADICT_GET_VECTOR")
	static function datadictGetVector(objectData:Dynamic, key:String):Dynamic;

	/**
	 * 
	 */
	@:native("DATADICT_SET_INT")
	static function datadictSetInt(objectData:Dynamic, key:String, value:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DATADICT_GET_DICT")
	static function datadictGetDict(objectData:Dynamic, key:String):Dynamic;

	/**
	 * 
	 */
	@:native("DATADICT_GET_STRING")
	static function datadictGetString(objectData:Dynamic, key:String):String;

	/**
	 * 
	 */
	@:native("DATADICT_SET_STRING")
	static function datadictSetString(objectData:Dynamic, key:String, value:String):Dynamic;

	/**
	 * 
	 */
	@:native("DATADICT_SET_VECTOR")
	static function datadictSetVector(objectData:Dynamic, key:String, valueX:Float, valueY:Float, valueZ:Float):Dynamic;

	/**
	 * 
	 */
	@:native("DATADICT_SET_BOOL")
	static function datadictSetBool(objectData:Dynamic, key:String, value:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("DATADICT_SET_FLOAT")
	static function datadictSetFloat(objectData:Dynamic, key:String, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("DATAFILE_FLUSH_MISSION_HEADER")
	static function datafileFlushMissionHeader():Dynamic;

	/**
	 * 
	 */
	@:native("DATAFILE_HAS_LOADED_FILE_DATA")
	static function datafileHasLoadedFileData(p0:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 1: int p0
	 * ```
	 */
	@:native("DATAFILE_CREATE")
	static function datafileCreate():Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("DATAFILE_SELECT_ACTIVE_FILE")
	static function datafileSelectActiveFile(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("DATAFILE_CLEAR_WATCH_LIST")
	static function datafileClearWatchList():Dynamic;

	/**
	 * 
	 */
	@:native("DATAFILE_IS_VALID_REQUEST_ID")
	static function datafileIsValidRequestId(index:Int):Bool;

	/**
	 * 
	 */
	@:native("DATAFILE_DELETE_REQUESTED_FILE")
	static function datafileDeleteRequestedFile(p0:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("DATAFILE_SELECT_UGC_DATA")
	static function datafileSelectUgcData(p0:Int):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 1: int p0
	 * ```
	 */
	@:native("DATAFILE_DELETE")
	static function datafileDelete():Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("DATAFILE_SELECT_CREATOR_STATS")
	static function datafileSelectCreatorStats(p0:Int):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("DATAFILE_START_SAVE_TO_CLOUD")
	static function datafileStartSaveToCloud(filename:String):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 3: Any p2
	 * ```
	 */
	@:native("DATAFILE_SELECT_UGC_STATS")
	static function datafileSelectUgcStats(p0:Int, p1:Bool):Bool;

	/**
	 * 
	 */
	@:native("DATAFILE_HAS_VALID_FILE_DATA")
	static function datafileHasValidFileData(p0:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 1: int p0
	 * ```
	 */
	@:native("DATAFILE_GET_FILE_DICT")
	static function datafileGetFileDict():String;

	/**
	 * ```
	 * Loads a User-Generated Content (UGC) file. These files can be found in "[GTA5]\data\ugc" and "[GTA5]\common\patch\ugc". They seem to follow a naming convention, most likely of "[name]_[part].ugc". See example below for usage.
	 * Returns whether or not the file was successfully loaded.
	 * Example:
	 * DATAFILE::_LOAD_UGC_FILE("RockstarPlaylists") // loads "rockstarplaylists_00.ugc"
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("DATAFILE_LOAD_OFFLINE_UGC")
	static function datafileLoadOfflineUgc(filename:String):Bool;

	/**
	 * ```
	 * Example:  
	 * if (!DATAFILE::_BEDB96A7584AA8CF())  
	 * {  
	 *     if (!g_109E3)  
	 * 	{  
	 *         if (((sub_d4f() == 2) == 0) && (!NETWORK::NETWORK_IS_GAME_IN_PROGRESS()))  
	 * {  
	 *             if (NETWORK::NETWORK_IS_CLOUD_AVAILABLE())  
	 * 	{  
	 *                 g_17A8B = 0;  
	 *             }  
	 *             if (!g_D52C)  
	 * 	{  
	 *                 sub_730();  
	 *             }  
	 *         }  
	 *     }  
	 * }  
	 * ```
	 */
	@:native("DATAFILE_IS_SAVE_PENDING")
	static function datafileIsSavePending():Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("DATAFILE_SELECT_UGC_PLAYER_DATA")
	static function datafileSelectUgcPlayerData(p0:Int):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 1: int p0
	 * ```
	 */
	@:native("DATAFILE_STORE_MISSION_HEADER")
	static function datafileStoreMissionHeader():Dynamic;

	/**
	 * ```
	 * Adds the given request ID to the watch list.
	 * ```
	 */
	@:native("DATAFILE_WATCH_REQUEST_ID")
	static function datafileWatchRequestId(id:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DATAFILE_UPDATE_SAVE_TO_CLOUD")
	static function datafileUpdateSaveToCloud(p0:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 6: Any p5
	 * ```
	 */
	@:native("UGC_CREATE_MISSION")
	static function ugcCreateMission(contentName:String, description:String, tagsCsv:String, contentTypeName:String, publish:Bool):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 8: Any p7
	 * ```
	 */
	@:native("UGC_CREATE_CONTENT")
	static function ugcCreateContent(data:String, dataCount:Int, contentName:String, description:String, tagsCsv:String, contentTypeName:String, publish:Bool):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 4: Any p3
	 * ```
	 */
	@:native("UGC_SET_PLAYER_DATA")
	static function ugcSetPlayerData(contentId:String, rating:Float, contentTypeName:String):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 8: Any p7
	 * ```
	 */
	@:native("UGC_UPDATE_CONTENT")
	static function ugcUpdateContent(contentId:String, data:Dynamic, dataCount:Int, contentName:String, description:String, tagsCsv:String, contentTypeName:String):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 6: Any p5
	 * ```
	 */
	@:native("UGC_UPDATE_MISSION")
	static function ugcUpdateMission(contentId:String, contentName:String, description:String, tagsCsv:String, contentTypeName:String):Bool;

}
