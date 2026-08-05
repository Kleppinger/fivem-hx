package fivem.client.natives;

@:native("_G")
extern class Files {
	/**
	 * 
	 */
	@:native("DoesShopPedApparelHaveRestrictionTag")
	static function doesShopPedApparelHaveRestrictionTag(componentHash:Int, restrictionTagHash:Int, componentId:Int):Bool;

	/**
	 * 
	 */
	@:native("GetDlcVehicleFlags")
	static function getDlcVehicleFlags(dlcVehicleIndex:Int):Int;

	/**
	 * ```
	 * dlcVehicleIndex is 0 to GET_NUM_DLC_VEHICLS()  
	 * ```
	 */
	@:native("GetDlcVehicleModel")
	static function getDlcVehicleModel(dlcVehicleIndex:Int):Int;

	/**
	 * The Second item in the struct `*(Hash *)(outData + 1)` is the vehicle hash.
	 */
	@:native("GetDlcVehicleData")
	static function getDlcVehicleData(dlcVehicleIndex:Int, outData:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetDlcVehicleModLockHash")
	static function getDlcVehicleModLockHash(hash:Int):Int;

	/**
	 * ```
	 * p0 seems to be the weapon index  
	 * p1 seems to be the weapon component index  
	 * struct DlcComponentData{  
	 * int attachBone;  
	 * int padding1;  
	 * int bActiveByDefault;  
	 * int padding2;  
	 * int unk;  
	 * int padding3;  
	 * int componentHash;  
	 * int padding4;  
	 * int unk2;  
	 * int padding5;  
	 * int componentCost;  
	 * int padding6;  
	 * char nameLabel[64];  
	 * char descLabel[64];  
	 * };  
	 * ```
	 */
	@:native("GetDlcWeaponComponentData")
	static function getDlcWeaponComponentData(dlcWeaponIndex:Int, dlcWeapCompIndex:Int, ComponentDataPtr:Dynamic):Bool;

	/**
	 * Same as GET_DLC_WEAPON_DATA but only works for DLC weapons that are available in SP.
	 * 
	 * ```
	 * NativeDB Introduced: v2060
	 * ```
	 */
	@:native("GetDlcWeaponDataSp")
	static function GetDlcWeaponDataSp(dlcWeaponIndex:Int, outData:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetForcedComponent")
	static function getForcedComponent(componentHash:Int, forcedComponentIndex:Int, nameHash:Dynamic, enumValue:Dynamic, componentType:Dynamic):Dynamic;

	/**
	 * ```
	 * dlcWeaponIndex takes a number from 0 - GET_NUM_DLC_WEAPONS() - 1.  
	 * struct DlcWeaponData  
	 * {  
	 * int emptyCheck; //use DLC1::_IS_DLC_DATA_EMPTY on this  
	 * int padding1;  
	 * int weaponHash;  
	 * int padding2;  
	 * int unk;  
	 * int padding3;  
	 * int weaponCost;  
	 * int padding4;  
	 * int ammoCost;  
	 * int padding5;  
	 * int ammoType;  
	 * int padding6;  
	 * int defaultClipSize;  
	 * int padding7;  
	 * char nameLabel[64];  
	 * char descLabel[64];  
	 * char desc2Label[64]; // usually "the" + name  
	 * char upperCaseNameLabel[64];  
	 * };  
	 * ```
	 */
	@:native("GetDlcWeaponData")
	static function getDlcWeaponData(dlcWeaponIndex:Int, outData:Dynamic):Bool;

	/**
	 * Same as GET_DLC_WEAPON_COMPONENT_DATA but only works for DLC components that are available in SP.
	 * 
	 * ```
	 * NativeDB Introduced: v2060
	 * ```
	 */
	@:native("GetDlcWeaponComponentDataSp")
	static function GetDlcWeaponComponentDataSp(dlcWeaponIndex:Int, dlcWeapCompIndex:Int, ComponentDataPtr:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetHashNameForProp")
	static function getHashNameForProp(entity:Dynamic, componentId:Int, propIndex:Int, propTextureIndex:Int):Int;

	/**
	 * Returns the total number of DLC vehicles.
	 */
	@:native("GetNumDlcVehicles")
	static function getNumDlcVehicles():Int;

	/**
	 * 
	 */
	@:native("GetForcedProp")
	static function getForcedProp(componentHash:Int, forcedPropIndex:Int, nameHash:Dynamic, enumValue:Dynamic, anchorPoint:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetHashNameForComponent")
	static function getHashNameForComponent(entity:Dynamic, componentId:Int, drawableVariant:Int, textureVariant:Int):Int;

	/**
	 * ```
	 * Returns the total number of DLC weapons.
	 * ```
	 */
	@:native("GetNumDlcWeapons")
	static function getNumDlcWeapons():Int;

	/**
	 * Returns the total number of DLC weapon components that are available in SP.
	 * 
	 * ```
	 * NativeDB Introduced: v2060
	 * ```
	 */
	@:native("GetNumDlcWeaponComponentsSp")
	static function GetNumDlcWeaponComponentsSp(dlcWeaponIndex:Int):Int;

	/**
	 * ```
	 * Returns the total number of DLC weapon components.
	 * ```
	 */
	@:native("GetNumDlcWeaponComponents")
	static function getNumDlcWeaponComponents(dlcWeaponIndex:Int):Int;

	/**
	 * Returns the total number of DLC weapons that are available in SP (availableInSP field in shop_weapon.meta).
	 * 
	 * ```
	 * NativeDB Introduced: v2060
	 * ```
	 */
	@:native("GetNumDlcWeaponsSp")
	static function GetNumDlcWeaponsSp():Int;

	/**
	 * ```
	 * Character types:
	 * 0 = Michael,
	 * 1 = Franklin,
	 * 2 = Trevor,
	 * 3 = MPMale,
	 * 4 = MPFemale
	 * ```
	 */
	@:native("GetNumTattooShopDlcItems")
	static function getNumTattooShopDlcItems(character:Int):Int;

	/**
	 * ```
	 * Returns number of possible values of the forcedComponentIndex argument of GET_FORCED_COMPONENT.
	 * ```
	 */
	@:native("GetShopPedApparelForcedComponentCount")
	static function getShopPedApparelForcedComponentCount(componentHash:Int):Int;

	/**
	 * 
	 */
	@:native("GetShopPedApparelVariantPropCount")
	static function GetShopPedApparelVariantPropCount(propHash:Int):Int;

	/**
	 * 
	 */
	@:native("GetShopPedOutfitComponentVariant")
	static function getShopPedOutfitComponentVariant(outfit:Int, slot:Int, outComponentVariant:Dynamic):Bool;

	/**
	 * ```
	 * Returns number of possible values of the forcedPropIndex argument of GET_FORCED_PROP.
	 * ```
	 */
	@:native("GetShopPedApparelForcedPropCount")
	static function getShopPedApparelForcedPropCount(componentHash:Int):Int;

	/**
	 * 
	 */
	@:native("GetShopPedApparelVariantComponentCount")
	static function getShopPedApparelVariantComponentCount(componentHash:Int):Int;

	/**
	 * 
	 */
	@:native("GetShopPedOutfit")
	static function getShopPedOutfit(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetShopPedOutfitLocate")
	static function getShopPedOutfitLocate(p0:Dynamic):Int;

	/**
	 * ```
	 * More info here: https://gist.github.com/root-cause/3b80234367b0c856d60bf5cb4b826f86
	 * ```
	 */
	@:native("GetShopPedComponent")
	static function getShopPedComponent(componentHash:Int, outComponent:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetShopPedOutfitPropVariant")
	static function getShopPedOutfitPropVariant(outfitHash:Int, variantIndex:Int, outPropVariant:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("GetShopPedQueryComponent")
	static function getShopPedQueryComponent(componentId:Int, outComponent:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetShopPedProp")
	static function getShopPedProp(componentHash:Int, outProp:Dynamic):Dynamic;

	/**
	 * ```
	 * struct Outfit_s  
	 * {  
	 * 	int mask, torso, pants, parachute, shoes, misc1, tops1, armour, crew, tops2, hat, glasses, earpiece;  
	 * 	int maskTexture, torsoTexture, pantsTexture, parachuteTexture, shoesTexture, misc1Texture, tops1Texture,   
	 * 		armourTexture, crewTexture, tops2Texture, hatTexture, glassesTexture, earpieceTexture;  
	 * };  
	 * ```
	 */
	@:native("GetShopPedQueryOutfit")
	static function getShopPedQueryOutfit(outfitIndex:Int, outfit:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetShopPedQueryProp")
	static function getShopPedQueryProp(componentId:Int, outProp:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("GetVariantComponent")
	static function getVariantComponent(componentHash:Int, variantComponentIndex:Int, nameHash:Dynamic, enumValue:Dynamic, componentType:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("GetTattooShopDlcItemIndex")
	static function getTattooShopDlcItemIndex(character:Int, collection:Int, preset:Int):Int;

	/**
	 * 
	 */
	@:native("GetVariantProp")
	static function GetVariantProp(componentHash:Int, variantPropIndex:Int, nameHash:Dynamic, enumValue:Dynamic, anchorPoint:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("IsDlcVehicleMod")
	static function isDlcVehicleMod(hash:Int):Bool;

	/**
	 * 
	 */
	@:native("InitShopPedProp")
	static function initShopPedProp(outProp:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("SetupShopPedApparelQuery")
	static function setupShopPedApparelQuery(p0:Int, p1:Int, p2:Int, p3:Int):Int;

	/**
	 * 
	 */
	@:native("IsContentItemLocked")
	static function isContentItemLocked(itemHash:Int):Bool;

	/**
	 * Returns data that adheres to the tattoo shop item data that is used in shop_tattoo.meta
	 * 
	 * Character types:
	 * 
	 * ```cpp
	 * enum eTattooFaction
	 * {
	 * 	TATTOO_SP_MICHAEL = 0,
	 * 	TATTOO_SP_FRANKLIN = 1,
	 * 	TATTOO_SP_TREVOR = 2,
	 * 	TATTOO_MP_FM = 3,
	 * 	TATTOO_MP_FM_F = 4
	 * }
	 * ```
	 * 
	 * Returned struct properties:
	 * 
	 * ```cpp
	 * struct sTattooShopItemValues
	 * {
	 * 	// Lock hash, used with IS_CONTENT_ITEM_LOCKED
	 * 	int LockHash;
	 * 	// Unique ID of this slot. It can also be 0.
	 * 	int Index;
	 * 	// Collection hash of this tattoo
	 * 	int CollectionHash;
	 * 	// Preset hash of this tattoo
	 * 	int PresetHash;
	 * 	// Cost of this tattoo in shops.
	 * 	int Cost;
	 * 	// Secondary placement of this tattoo.
	 * 	int eFacing;
	 * 	// Location of this tattoo on the body (for example, for torso there would be chest upper, stomach, etc)
	 * 	int UpdateGroup;
	 * 	// This tattoo's name in the form of a text label.
	 * 	const char* NameTextLabel;
	 * };
	 * ```
	 */
	@:native("GetTattooShopDlcItemData")
	static function getTattooShopDlcItemData(characterType:Int, decorationIndex:Int, outComponent:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("InitShopPedComponent")
	static function initShopPedComponent(outComponent:Dynamic):Dynamic;

	/**
	 * ```
	 * character is 0 for Michael, 1 for Franklin, 2 for Trevor, 3 for freemode male, and 4 for freemode female.
	 * componentId is between 0 and 11 and corresponds to the usual component slots.
	 * p1 could be the outfit number; unsure.
	 * p2 is usually -1; unknown function.
	 * p3 appears to be for selecting between clothes and props; false is used with components/clothes, true is used with props.
	 * p4 is usually -1; unknown function.
	 * componentId is -1 when p3 is true in decompiled scripts.
	 * ```
	 */
	@:native("SetupShopPedApparelQueryTu")
	static function setupShopPedApparelQueryTu(character:Int, p1:Int, p2:Int, p3:Bool, p4:Int, componentId:Int):Int;

	/**
	 * ```
	 * characters
	 * 0: Michael
	 * 1: Franklin
	 * 2: Trevor
	 * 3: MPMale
	 * 4: MPFemale
	 * ```
	 */
	@:native("SetupShopPedOutfitQuery")
	static function setupShopPedOutfitQuery(character:Int, p1:Bool):Int;

	/**
	 * ```
	 * From fm_deathmatch_creator and fm_race_creator:
	 * 
	 * FILES::_UNLOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP_SP"));
	 * FILES::_LOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP"));
	 * 
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("UnloadContentChangeSetGroup")
	static function UnloadContentChangeSetGroup(hash:Int):Dynamic;

	/**
	 * ```
	 * From fm_deathmatch_creator and fm_race_creator:
	 * 
	 * FILES::_UNLOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP_SP"));
	 * FILES::_LOAD_CONTENT_CHANGE_SET_GROUP(joaat("GROUP_MAP"));
	 * 
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("LoadContentChangeSetGroup")
	static function LoadContentChangeSetGroup(hash:Int):Dynamic;

}
