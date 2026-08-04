package fivem.client.natives;

@:native("_G")
extern class Netshopping {
	/**
	 * 
	 */
	@:native("_NET_GAMESERVER_BASKET_APPLY_SERVER_DATA")
	static function NetGameserverBasketApplyServerData(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("_NET_GAMESERVER_BASKET_END")
	static function NetGameserverBasketEnd():Bool;

	/**
	 * ```
	 * NativeDB Introduced: v372
	 * ```
	 */
	@:native("_NET_GAMESERVER_BASKET_DELETE")
	static function NetGameserverBasketDelete():Bool;

	/**
	 * 
	 */
	@:native("_NET_GAMESERVER_CATALOG_ITEM_EXISTS_HASH")
	static function NetGameserverCatalogItemExistsHash(hash:Int):Bool;

	/**
	 * 
	 */
	@:native("_NET_GAMESERVER_BEGIN_SERVICE")
	static function NetGameserverBeginService(transactionId:Dynamic, categoryHash:Int, itemHash:Int, actionTypeHash:Int, value:Int, flags:Int):Bool;

	/**
	 * 
	 */
	@:native("_NET_GAMESERVER_CHECKOUT_START")
	static function NetGameserverCheckoutStart(transactionId:Int):Bool;

	/**
	 * 
	 */
	@:native("_NET_GAMESERVER_CATALOG_IS_READY")
	static function NetGameserverCatalogIsReady():Bool;

	/**
	 * 
	 */
	@:native("_NET_GAMESERVER_DELETE_SET_TELEMETRY_NONCE_SEED")
	static function NetGameserverDeleteSetTelemetryNonceSeed():Bool;

	/**
	 * 
	 */
	@:native("_NET_GAMESERVER_CATALOG_ITEM_EXISTS")
	static function NetGameserverCatalogItemExists(name:String):Bool;

	/**
	 * 
	 */
	@:native("_NET_GAMESERVER_BASKET_ADD_ITEM")
	static function NetGameserverBasketAddItem(itemData:Dynamic, quantity:Int):Bool;

	/**
	 * ```
	 * Note: only one of the arguments can be set to true at a time
	 * ```
	 */
	@:native("_NET_GAMESERVER_GET_BALANCE")
	static function NetGameserverGetBalance(inventory:Bool, playerbalance:Bool):Bool;

	/**
	 * 
	 */
	@:native("_NET_GAMESERVER_BASKET_IS_FULL")
	static function NetGameserverBasketIsFull():Bool;

	/**
	 * 
	 */
	@:native("_NET_GAMESERVER_GET_TRANSACTION_MANAGER_DATA")
	static function NetGameserverGetTransactionManagerData(p0:Dynamic, p1:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("_NET_GAMESERVER_GET_CATALOG_STATE")
	static function NetGameserverGetCatalogState(state:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("_NET_GAMESERVER_BASKET_START")
	static function NetGameserverBasketStart(transactionId:Dynamic, categoryHash:Int, actionHash:Int, flags:Int):Bool;

	/**
	 * 
	 */
	@:native("_NET_GAMESERVER_DELETE_CHARACTER_SLOT")
	static function NetGameserverDeleteCharacterSlot(slot:Int, transfer:Bool, reason:Int):Bool;

	/**
	 * 
	 */
	@:native("_NET_GAMESERVER_IS_SESSION_VALID")
	static function NetGameserverIsSessionValid(charSlot:Int):Bool;

	/**
	 * 
	 */
	@:native("_NET_GAMESERVER_SESSION_APPLY_RECEIVED_DATA")
	static function NetGameserverSessionApplyReceivedData(charSlot:Int):Bool;

	/**
	 * 
	 */
	@:native("_NET_GAMESERVER_DELETE_CHARACTER_SLOT_GET_STATUS")
	static function NetGameserverDeleteCharacterSlotGetStatus():Int;

	/**
	 * 
	 */
	@:native("_NET_GAMESERVER_SET_TELEMETRY_NONCE_SEED")
	static function NetGameserverSetTelemetryNonceSeed(p0:Int):Bool;

	/**
	 * 
	 */
	@:native("_NET_GAMESERVER_END_SERVICE")
	static function NetGameserverEndService(transactionId:Int):Bool;

	/**
	 * ```
	 * bool is always true in game scripts  
	 * ```
	 */
	@:native("_NET_GAMESERVER_GET_PRICE")
	static function NetGameserverGetPrice(itemHash:Int, categoryHash:Int, p2:Bool):Int;

	/**
	 * ```
	 * Same as 0x23789E777D14CE44
	 * ```
	 */
	@:native("_NET_GAMESERVER_TRANSFER_CASH_GET_STATUS_2")
	static function NetGameserverTransferCashGetStatus2():Int;

	/**
	 * 
	 */
	@:native("_NET_GAMESERVER_TRANSFER_WALLET_TO_BANK")
	static function NetGameserverTransferWalletToBank(charSlot:Int, amount:Int):Bool;

	/**
	 * 
	 */
	@:native("_NET_GAMESERVER_IS_CATALOG_VALID")
	static function NetGameserverIsCatalogValid():Bool;

	/**
	 * 
	 */
	@:native("_NET_GAMESERVER_IS_SESSION_REFRESH_PENDING")
	static function NetGameserverIsSessionRefreshPending():Bool;

	/**
	 * ```
	 * Same as 0x350AA5EBC03D3BD2
	 * ```
	 */
	@:native("_NET_GAMESERVER_TRANSFER_CASH_GET_STATUS")
	static function NetGameserverTransferCashGetStatus():Int;

	/**
	 * ```
	 * Used to be NETWORK_SHOP_CASH_TRANSFER_SET_TELEMETRY_NONCE_SEED
	 * ```
	 */
	@:native("_NET_GAMESERVER_TRANSFER_CASH_SET_TELEMETRY_NONCE_SEED")
	static function NetGameserverTransferCashSetTelemetryNonceSeed():Bool;

	/**
	 * 
	 */
	@:native("_NET_GAMESERVER_START_SESSION")
	static function NetGameserverStartSession(charSlot:Int):Bool;

	/**
	 * 
	 */
	@:native("_NET_GAMESERVER_TRANSFER_BANK_TO_WALLET")
	static function NetGameserverTransferBankToWallet(charSlot:Int, amount:Int):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NET_GAMESERVER_USE_SERVER_TRANSACTIONS")
	static function NetGameserverUseServerTransactions():Bool;

}
