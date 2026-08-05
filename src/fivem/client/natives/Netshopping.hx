package fivem.client.natives;

@:native("_G")
extern class Netshopping {
	/**
	 * 
	 */
	@:native("NetGameserverBasketApplyServerData")
	static function NetGameserverBasketApplyServerData(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetGameserverBasketEnd")
	static function NetGameserverBasketEnd():Bool;

	/**
	 * ```
	 * NativeDB Introduced: v372
	 * ```
	 */
	@:native("NetGameserverBasketDelete")
	static function NetGameserverBasketDelete():Bool;

	/**
	 * 
	 */
	@:native("NetGameserverCatalogItemExistsHash")
	static function NetGameserverCatalogItemExistsHash(hash:Int):Bool;

	/**
	 * 
	 */
	@:native("NetGameserverBeginService")
	static function NetGameserverBeginService(transactionId:Dynamic, categoryHash:Int, itemHash:Int, actionTypeHash:Int, value:Int, flags:Int):Bool;

	/**
	 * 
	 */
	@:native("NetGameserverCheckoutStart")
	static function NetGameserverCheckoutStart(transactionId:Int):Bool;

	/**
	 * 
	 */
	@:native("NetGameserverCatalogIsReady")
	static function NetGameserverCatalogIsReady():Bool;

	/**
	 * 
	 */
	@:native("NetGameserverDeleteSetTelemetryNonceSeed")
	static function NetGameserverDeleteSetTelemetryNonceSeed():Bool;

	/**
	 * 
	 */
	@:native("NetGameserverCatalogItemExists")
	static function NetGameserverCatalogItemExists(name:String):Bool;

	/**
	 * 
	 */
	@:native("NetGameserverBasketAddItem")
	static function NetGameserverBasketAddItem(itemData:Dynamic, quantity:Int):Bool;

	/**
	 * ```
	 * Note: only one of the arguments can be set to true at a time
	 * ```
	 */
	@:native("NetGameserverGetBalance")
	static function NetGameserverGetBalance(inventory:Bool, playerbalance:Bool):Bool;

	/**
	 * 
	 */
	@:native("NetGameserverBasketIsFull")
	static function NetGameserverBasketIsFull():Bool;

	/**
	 * 
	 */
	@:native("NetGameserverGetTransactionManagerData")
	static function NetGameserverGetTransactionManagerData(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetGameserverGetCatalogState")
	static function NetGameserverGetCatalogState(state:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetGameserverBasketStart")
	static function NetGameserverBasketStart(transactionId:Dynamic, categoryHash:Int, actionHash:Int, flags:Int):Bool;

	/**
	 * 
	 */
	@:native("NetGameserverDeleteCharacterSlot")
	static function NetGameserverDeleteCharacterSlot(slot:Int, transfer:Bool, reason:Int):Bool;

	/**
	 * 
	 */
	@:native("NetGameserverIsSessionValid")
	static function NetGameserverIsSessionValid(charSlot:Int):Bool;

	/**
	 * 
	 */
	@:native("NetGameserverSessionApplyReceivedData")
	static function NetGameserverSessionApplyReceivedData(charSlot:Int):Bool;

	/**
	 * 
	 */
	@:native("NetGameserverDeleteCharacterSlotGetStatus")
	static function NetGameserverDeleteCharacterSlotGetStatus():Int;

	/**
	 * 
	 */
	@:native("NetGameserverSetTelemetryNonceSeed")
	static function NetGameserverSetTelemetryNonceSeed(p0:Int):Bool;

	/**
	 * 
	 */
	@:native("NetGameserverEndService")
	static function NetGameserverEndService(transactionId:Int):Bool;

	/**
	 * ```
	 * bool is always true in game scripts  
	 * ```
	 */
	@:native("NetGameserverGetPrice")
	static function NetGameserverGetPrice(itemHash:Int, categoryHash:Int, p2:Bool):Int;

	/**
	 * ```
	 * Same as 0x23789E777D14CE44
	 * ```
	 */
	@:native("NetGameserverTransferCashGetStatus_2")
	static function NetGameserverTransferCashGetStatus2():Int;

	/**
	 * 
	 */
	@:native("NetGameserverTransferWalletToBank")
	static function NetGameserverTransferWalletToBank(charSlot:Int, amount:Int):Bool;

	/**
	 * 
	 */
	@:native("NetGameserverIsCatalogValid")
	static function NetGameserverIsCatalogValid():Bool;

	/**
	 * 
	 */
	@:native("NetGameserverIsSessionRefreshPending")
	static function NetGameserverIsSessionRefreshPending():Bool;

	/**
	 * ```
	 * Same as 0x350AA5EBC03D3BD2
	 * ```
	 */
	@:native("NetGameserverTransferCashGetStatus")
	static function NetGameserverTransferCashGetStatus():Int;

	/**
	 * ```
	 * Used to be NETWORK_SHOP_CASH_TRANSFER_SET_TELEMETRY_NONCE_SEED
	 * ```
	 */
	@:native("NetGameserverTransferCashSetTelemetryNonceSeed")
	static function NetGameserverTransferCashSetTelemetryNonceSeed():Bool;

	/**
	 * 
	 */
	@:native("NetGameserverStartSession")
	static function NetGameserverStartSession(charSlot:Int):Bool;

	/**
	 * 
	 */
	@:native("NetGameserverTransferBankToWallet")
	static function NetGameserverTransferBankToWallet(charSlot:Int, amount:Int):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetGameserverUseServerTransactions")
	static function NetGameserverUseServerTransactions():Bool;

}
