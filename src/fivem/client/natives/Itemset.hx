package fivem.client.natives;

@:native("_G")
extern class Itemset {
	/**
	 * 
	 */
	@:native("AddToItemset")
	static function addToItemset(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("CleanItemset")
	static function cleanItemset(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("DestroyItemset")
	static function destroyItemset(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetItemsetSize")
	static function getItemsetSize(x:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("IsInItemset")
	static function isInItemset(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetIndexedItemInItemset")
	static function getIndexedItemInItemset(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("IsItemsetValid")
	static function isItemsetValid(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("CreateItemset")
	static function createItemset(distri:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("RemoveFromItemset")
	static function removeFromItemset(p0:Dynamic, p1:Dynamic):Dynamic;

}
