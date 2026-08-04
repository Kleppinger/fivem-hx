package fivem.client.natives;

@:native("_G")
extern class Itemset {
	/**
	 * 
	 */
	@:native("ADD_TO_ITEMSET")
	static function addToItemset(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("CLEAN_ITEMSET")
	static function cleanItemset(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("DESTROY_ITEMSET")
	static function destroyItemset(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GET_ITEMSET_SIZE")
	static function getItemsetSize(x:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("IS_IN_ITEMSET")
	static function isInItemset(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GET_INDEXED_ITEM_IN_ITEMSET")
	static function getIndexedItemInItemset(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("IS_ITEMSET_VALID")
	static function isItemsetValid(p0:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("CREATE_ITEMSET")
	static function createItemset(distri:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("REMOVE_FROM_ITEMSET")
	static function removeFromItemset(p0:Dynamic, p1:Dynamic):Dynamic;

}
