package fivem.client.natives;

@:native("_G")
extern class Datafile {
	/**
	 * 
	 */
	@:native("DataarrayAddBool")
	static function dataarrayAddBool(arrayData:Dynamic, value:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("DataarrayAddFloat")
	static function dataarrayAddFloat(arrayData:Dynamic, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("DataarrayAddDict")
	static function dataarrayAddDict(arrayData:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("DataarrayAddInt")
	static function dataarrayAddInt(arrayData:Dynamic, value:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DataarrayGetDict")
	static function dataarrayGetDict(arrayData:Dynamic, arrayIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DataarrayAddString")
	static function dataarrayAddString(arrayData:Dynamic, value:String):Dynamic;

	/**
	 * 
	 */
	@:native("DataarrayAddVector")
	static function dataarrayAddVector(arrayData:Dynamic, valueX:Float, valueY:Float, valueZ:Float):Dynamic;

	/**
	 * 
	 */
	@:native("DataarrayGetBool")
	static function dataarrayGetBool(arrayData:Dynamic, arrayIndex:Int):Bool;

	/**
	 * 
	 */
	@:native("DataarrayGetCount")
	static function dataarrayGetCount(arrayData:Dynamic):Int;

	/**
	 * 
	 */
	@:native("DataarrayGetFloat")
	static function dataarrayGetFloat(arrayData:Dynamic, arrayIndex:Int):Float;

	/**
	 * 
	 */
	@:native("DataarrayGetInt")
	static function dataarrayGetInt(arrayData:Dynamic, arrayIndex:Int):Int;

	/**
	 * 
	 */
	@:native("DataarrayGetVector")
	static function dataarrayGetVector(arrayData:Dynamic, arrayIndex:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DatadictGetArray")
	static function datadictGetArray(objectData:Dynamic, key:String):Dynamic;

	/**
	 * 
	 */
	@:native("DatadictCreateArray")
	static function datadictCreateArray(objectData:Dynamic, key:String):Dynamic;

	/**
	 * 
	 */
	@:native("DatadictGetFloat")
	static function datadictGetFloat(objectData:Dynamic, key:String):Float;

	/**
	 * 
	 */
	@:native("DataarrayGetString")
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
	@:native("DataarrayGetType")
	static function dataarrayGetType(arrayData:Dynamic, arrayIndex:Int):Int;

	/**
	 * 
	 */
	@:native("DatadictGetInt")
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
	@:native("DatadictGetType")
	static function datadictGetType(objectData:Dynamic, key:String):Int;

	/**
	 * 
	 */
	@:native("DatadictCreateDict")
	static function datadictCreateDict(objectData:Dynamic, key:String):Dynamic;

	/**
	 * 
	 */
	@:native("DatadictGetBool")
	static function datadictGetBool(objectData:Dynamic, key:String):Bool;

	/**
	 * 
	 */
	@:native("DatadictGetVector")
	static function datadictGetVector(objectData:Dynamic, key:String):Dynamic;

	/**
	 * 
	 */
	@:native("DatadictSetInt")
	static function datadictSetInt(objectData:Dynamic, key:String, value:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DatadictGetDict")
	static function datadictGetDict(objectData:Dynamic, key:String):Dynamic;

	/**
	 * 
	 */
	@:native("DatadictGetString")
	static function datadictGetString(objectData:Dynamic, key:String):String;

	/**
	 * 
	 */
	@:native("DatadictSetString")
	static function datadictSetString(objectData:Dynamic, key:String, value:String):Dynamic;

	/**
	 * 
	 */
	@:native("DatadictSetVector")
	static function datadictSetVector(objectData:Dynamic, key:String, valueX:Float, valueY:Float, valueZ:Float):Dynamic;

	/**
	 * 
	 */
	@:native("DatadictSetBool")
	static function datadictSetBool(objectData:Dynamic, key:String, value:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("DatadictSetFloat")
	static function datadictSetFloat(objectData:Dynamic, key:String, value:Float):Dynamic;

	/**
	 * 
	 */
	@:native("DatafileFlushMissionHeader")
	static function datafileFlushMissionHeader():Dynamic;

	/**
	 * 
	 */
	@:native("DatafileHasLoadedFileData")
	static function datafileHasLoadedFileData(p0:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 1: int p0
	 * ```
	 */
	@:native("DatafileCreate")
	static function datafileCreate():Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("DatafileSelectActiveFile")
	static function datafileSelectActiveFile(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("DatafileClearWatchList")
	static function datafileClearWatchList():Dynamic;

	/**
	 * 
	 */
	@:native("DatafileIsValidRequestId")
	static function datafileIsValidRequestId(index:Int):Bool;

	/**
	 * 
	 */
	@:native("DatafileDeleteRequestedFile")
	static function datafileDeleteRequestedFile(p0:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("DatafileSelectUgcData")
	static function datafileSelectUgcData(p0:Int):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 1: int p0
	 * ```
	 */
	@:native("DatafileDelete")
	static function datafileDelete():Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("DatafileSelectCreatorStats")
	static function datafileSelectCreatorStats(p0:Int):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("DatafileStartSaveToCloud")
	static function datafileStartSaveToCloud(filename:String):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 3: Any p2
	 * ```
	 */
	@:native("DatafileSelectUgcStats")
	static function datafileSelectUgcStats(p0:Int, p1:Bool):Bool;

	/**
	 * 
	 */
	@:native("DatafileHasValidFileData")
	static function datafileHasValidFileData(p0:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 1: int p0
	 * ```
	 */
	@:native("DatafileGetFileDict")
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
	@:native("DatafileLoadOfflineUgc")
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
	@:native("DatafileIsSavePending")
	static function datafileIsSavePending():Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * ```
	 */
	@:native("DatafileSelectUgcPlayerData")
	static function datafileSelectUgcPlayerData(p0:Int):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 1: int p0
	 * ```
	 */
	@:native("DatafileStoreMissionHeader")
	static function datafileStoreMissionHeader():Dynamic;

	/**
	 * ```
	 * Adds the given request ID to the watch list.
	 * ```
	 */
	@:native("DatafileWatchRequestId")
	static function datafileWatchRequestId(id:Int):Dynamic;

	/**
	 * 
	 */
	@:native("DatafileUpdateSaveToCloud")
	static function datafileUpdateSaveToCloud(p0:Dynamic):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 6: Any p5
	 * ```
	 */
	@:native("UgcCreateMission")
	static function ugcCreateMission(contentName:String, description:String, tagsCsv:String, contentTypeName:String, publish:Bool):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 8: Any p7
	 * ```
	 */
	@:native("UgcCreateContent")
	static function ugcCreateContent(data:String, dataCount:Int, contentName:String, description:String, tagsCsv:String, contentTypeName:String, publish:Bool):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 4: Any p3
	 * ```
	 */
	@:native("UgcSetPlayerData")
	static function ugcSetPlayerData(contentId:String, rating:Float, contentTypeName:String):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 8: Any p7
	 * ```
	 */
	@:native("UgcUpdateContent")
	static function ugcUpdateContent(contentId:String, data:Dynamic, dataCount:Int, contentName:String, description:String, tagsCsv:String, contentTypeName:String):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 6: Any p5
	 * ```
	 */
	@:native("UgcUpdateMission")
	static function ugcUpdateMission(contentId:String, contentName:String, description:String, tagsCsv:String, contentTypeName:String):Bool;

}
