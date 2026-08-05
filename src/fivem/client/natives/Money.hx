package fivem.client.natives;

@:native("_G")
extern class Money {
	/**
	 * ```
	 * Does nothing and always returns false.
	 * ```
	 */
	@:native("DepositVc")
	static function depositVc(amount:Int):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 1: int p0
	 * NativeDB Added Parameter 2: int p1
	 * NativeDB Added Parameter 3: int amount
	 * NativeDB Added Parameter 4: int* p3
	 * ```
	 */
	@:native("CanPayGoon")
	static function CanPayGoon():Bool;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NetworkBuyBackupGang")
	static function networkBuyBackupGang(p0:Int, p1:Int, p2:Bool, p3:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkBuyContraband")
	static function NetworkBuyContraband(p0:Int, p1:Int, p2:Int, p3:Bool, p4:Bool):Dynamic;

	/**
	 * ```
	 * p1 = 0 (always)  
	 * p2 = 1 (always)  
	 * ```
	 */
	@:native("NetworkBuyAirstrike")
	static function networkBuyAirstrike(cost:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * The first parameter is the amount spent which is store in a global when this native is called. The global returns 10. Which is the price for both rides.  
	 * The last 3 parameters are,   
	 * 2,0,1 in the am_ferriswheel.c  
	 * 1,0,1 in the am_rollercoaster.c  
	 * ```
	 */
	@:native("NetworkBuyFairgroundRide")
	static function networkBuyFairgroundRide(amountSpent:Int, p1:Dynamic, p2:Bool, p3:Bool):Dynamic;

	/**
	 * ```
	 * p1 is just an assumption. p2 was false and p3 was true.  
	 * ```
	 */
	@:native("NetworkBuyBounty")
	static function networkBuyBounty(amount:Int, victim:Dynamic, p2:Bool, p3:Bool):Dynamic;

	/**
	 * ```
	 * p1 = 0 (always)  
	 * p2 = 1 (always)  
	 * ```
	 */
	@:native("NetworkBuyHeliStrike")
	static function networkBuyHeliStrike(cost:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkBuyItem")
	static function networkBuyItem(amount:Int, item:Int, p2:Dynamic, p3:Dynamic, p4:Bool, item_name:String, p6:Dynamic, p7:Dynamic, p8:Dynamic, p9:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkBuyHealthcare")
	static function networkBuyHealthcare(cost:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NetworkBuySmokes")
	static function networkBuySmokes(p0:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkCanBet")
	static function networkCanBet(amount:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkCanShareJobCash")
	static function networkCanShareJobCash():Bool;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NetworkBuyLotteryTicket")
	static function networkBuyLotteryTicket(p0:Int, p1:Int, p2:Bool, p3:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 6: Any p5
	 * ```
	 */
	@:native("NetworkCanSpendMoney")
	static function networkCanSpendMoney(p0:Dynamic, p1:Bool, p2:Bool, p3:Bool, p4:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NetworkBuyProperty")
	static function networkBuyProperty(propertyCost:Int, propertyName:Int, p2:Bool, p3:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NetworkCanBuyLotteryTicket")
	static function networkCanBuyLotteryTicket(cost:Int):Bool;

	/**
	 * Same as 0x8968D4D8C6C40C11.
	 * NETWORK_C\*
	 * 
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("NetworkCasinoCanPurchaseChipsWithPvc")
	static function NetworkCasinoCanPurchaseChipsWithPvc():Bool;

	/**
	 * Same as 0x394DCDB9E836B7A9.
	 * NETWORK_C\*
	 * 
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("NetworkCasinoCanPurchaseChipsWithPvc_2")
	static function NetworkCasinoCanPurchaseChipsWithPvc2():Bool;

	/**
	 * 
	 */
	@:native("NetworkCanReceivePlayerCash")
	static function networkCanReceivePlayerCash(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * NETWORK_C\*
	 * 
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("NetworkCasinoCanGamble")
	static function NetworkCasinoCanGamble(p0:Dynamic):Bool;

	/**
	 * NETWORK_C\*
	 * 
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("NetworkCasinoPurchaseChips")
	static function NetworkCasinoPurchaseChips(p0:Int, p1:Int):Bool;

	/**
	 * ```
	 * NETWORK_CAN_R??? or NETWORK_CAN_S???  
	 * ```
	 * 
	 * ```
	 * NativeDB Added Parameter 7: Any p6
	 * ```
	 */
	@:native("NetworkCanSpendMoney_2")
	static function NetworkCanSpendMoney2(p0:Dynamic, p1:Bool, p2:Bool, p3:Bool, p4:Dynamic, p5:Dynamic):Bool;

	/**
	 * GTAO_CASINO_HOUSE
	 * GTAO_CASINO_INSIDETRACK
	 * GTAO_CASINO_LUCKYWHEEL
	 * GTAO_CASINO_BLACKJACK
	 * GTAO_CASINO_ROULETTE
	 * GTAO_CASINO_SLOTS
	 * GTAO_CASINO_PURCHASE_CHIPS
	 * NETWORK_C\*
	 * 
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("NetworkCasinoCanUseGamblingType")
	static function NetworkCasinoCanUseGamblingType(hash:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkClearCharacterWallet")
	static function networkClearCharacterWallet(characterSlot:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEarnBoss")
	static function NetworkEarnBoss(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * ```
	 * Note the 2nd parameters are always 1, 0. I have a feeling it deals with your money, wallet, bank. So when you delete the character it of course wipes the wallet cash at that time. So if that was the case, it would be eg, NETWORK_DELETE_CHARACTER(characterIndex, deleteWalletCash, deleteBankCash);  
	 * ```
	 */
	@:native("NetworkDeleteCharacter")
	static function networkDeleteCharacter(characterSlot:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NetworkDeductCash")
	static function NetworkDeductCash(amount:Int, p1:String, p2:String, p3:Bool, p4:Bool, p5:Bool):Dynamic;

	/**
	 * NETWORK_C\*
	 * 
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("NetworkCasinoSellChips")
	static function NetworkCasinoSellChips(p0:Int, p1:Int):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("NetworkEarnCasinoHeistBonus")
	static function NetworkEarnCasinoHeistBonus(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("NetworkEarnCasinoHeist")
	static function NetworkEarnCasinoHeist(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic, p6:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEarnBossAgency")
	static function NetworkEarnBossAgency(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * DSPORT  
	 * ```
	 */
	@:native("NetworkEarnFromAiTargetKill")
	static function networkEarnFromAiTargetKill(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("NetworkEarnFmbbWageBonus")
	static function NetworkEarnFmbbWageBonus(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("NetworkEarnBountyHunterReward")
	static function NetworkEarnBountyHunterReward(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("NetworkEarnFromArenaSkillLevelProgression")
	static function NetworkEarnFromArenaSkillLevelProgression(amount:Int, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2060
	 * ```
	 */
	@:native("NetworkEarnCollectableCompletedCollection")
	static function NetworkEarnCollectableCompletedCollection(amount:Int, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * Example for p1: "AM_DISTRACT_COPS"  
	 * ```
	 */
	@:native("NetworkEarnFromAmbientJob")
	static function networkEarnFromAmbientJob(p0:Int, p1:String, p2:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("NetworkEarnFromAssassinateTargetKilled_2")
	static function NetworkEarnFromAssassinateTargetKilled2(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("NetworkEarnFromArenaWar")
	static function NetworkEarnFromArenaWar(amount:Int, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("NetworkEarnFromArenaCareerProgression")
	static function NetworkEarnFromArenaCareerProgression(amount:Int, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("NetworkEarnFromAssassinateTargetKilled")
	static function NetworkEarnFromAssassinateTargetKilled(amount:Int):Dynamic;

	/**
	 * ```
	 * For the money bags that drop a max of $40,000. Often called 40k bags.
	 * Most likely NETWORK_EARN_FROM_ROB***
	 * ```
	 */
	@:native("NetworkEarnFromArmourTruck")
	static function NetworkEarnFromArmourTruck(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("NetworkEarnFromBbEventBonus")
	static function NetworkEarnFromBbEventBonus(amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEarnFromBetting")
	static function networkEarnFromBetting(amount:Int, p1:String):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("NetworkEarnFromAutoshopBusiness")
	static function NetworkEarnFromAutoshopBusiness(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEarnFromBendJob")
	static function networkEarnFromBendJob(amount:Int, heistHash:String):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("NetworkEarnFromAutoshopIncome")
	static function NetworkEarnFromAutoshopIncome(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("NetworkEarnFromBikeShopBusiness")
	static function NetworkEarnFromBikeShopBusiness(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("NetworkEarnFromBikerIncome")
	static function NetworkEarnFromBikerIncome(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("NetworkEarnFromBbEventCargo")
	static function NetworkEarnFromBbEventCargo(amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEarnFromBounty")
	static function networkEarnFromBounty(amount:Int, networkHandle:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("NetworkEarnFromBusinessHubSell")
	static function NetworkEarnFromBusinessHubSell(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEarnFromBusinessProduct")
	static function NetworkEarnFromBusinessProduct(amount:Int, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("NetworkEarnFromBusinessBattle")
	static function NetworkEarnFromBusinessBattle(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("NetworkEarnFromCarclubMembership")
	static function NetworkEarnFromCarclubMembership(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkEarnFromCashingOut")
	static function NetworkEarnFromCashingOut(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("NetworkEarnFromCasinoMissionParticipation")
	static function NetworkEarnFromCasinoMissionParticipation(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("NetworkEarnFromBusinessHubSource")
	static function NetworkEarnFromBusinessHubSource(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("NetworkEarnFromCasinoAward")
	static function NetworkEarnFromCasinoAward(amount:Int, hash:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("NetworkEarnFromCasinoMissionReward")
	static function NetworkEarnFromCasinoMissionReward(amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEarnFromChallengeWin")
	static function networkEarnFromChallengeWin(p0:Dynamic, p1:Dynamic, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("NetworkEarnFromCasinoStoryMissionReward")
	static function NetworkEarnFromCasinoStoryMissionReward(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("NetworkEarnFromClubManagementParticipation")
	static function NetworkEarnFromClubManagementParticipation(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("NetworkEarnFromCollectionItem")
	static function NetworkEarnFromCollectionItem(amount:Int, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEarnFromCrateDrop")
	static function networkEarnFromCrateDrop(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("NetworkEarnFromCollectablesActionFigures")
	static function NetworkEarnFromCollectablesActionFigures(amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEarnFromContraband")
	static function NetworkEarnFromContraband(amount:Int, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("NetworkEarnFromCompleteCollection")
	static function NetworkEarnFromCompleteCollection(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkEarnFromCriminalMastermindBonus")
	static function NetworkEarnFromCriminalMastermindBonus(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEarnFromDailyObjectives")
	static function networkEarnFromDailyObjectives(p0:Int, p1:String, p2:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkEarnFromDarChallenge")
	static function NetworkEarnFromDarChallenge(amount:Int, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkEarnFromDoomsdayFinaleBonus")
	static function NetworkEarnFromDoomsdayFinaleBonus(amount:Int, vehicleHash:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("NetworkEarnFromDailyObjectiveEvent")
	static function NetworkEarnFromDailyObjectiveEvent(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("NetworkEarnFromFmbbPhonecallMission")
	static function NetworkEarnFromFmbbPhonecallMission(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEarnFromDestroyingContraband")
	static function NetworkEarnFromDestroyingContraband(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("NetworkEarnFromFmbbBossWork")
	static function NetworkEarnFromFmbbBossWork(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEarnFromGangPickup")
	static function NetworkEarnFromGangPickup(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkEarnFromGangopsJobsFinale")
	static function NetworkEarnFromGangopsJobsFinale(amount:Int, unk:String):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkEarnFromGangopsAwards")
	static function NetworkEarnFromGangopsAwards(amount:Int, unk:String, p2:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkEarnFromGangopsElite")
	static function NetworkEarnFromGangopsElite(amount:Int, unk:String, actIndex:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkEarnFromGangopsJobsSetup")
	static function NetworkEarnFromGangopsJobsSetup(amount:Int, unk:String):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkEarnFromGangopsWages")
	static function NetworkEarnFromGangopsWages(amount:Int, p1:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("NetworkEarnFromHackerTruckMission")
	static function NetworkEarnFromHackerTruckMission(p0:Dynamic, amount:Int, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkEarnFromGangopsWagesBonus")
	static function NetworkEarnFromGangopsWagesBonus(amount:Int, p1:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEarnFromHoldups")
	static function networkEarnFromHoldups(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkEarnFromGangopsJobsPrepParticipation")
	static function NetworkEarnFromGangopsJobsPrepParticipation(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NetworkEarnFromJobBonus")
	static function networkEarnFromJobBonus(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEarnFromPremiumJob")
	static function NetworkEarnFromPremiumJob(amount:Int, p1:String):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEarnFromImportExport")
	static function networkEarnFromImportExport(amount:Int, modelHash:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("NetworkEarnFromRcTimeTrial")
	static function NetworkEarnFromRcTimeTrial(amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEarnFromJob")
	static function networkEarnFromJob(amount:Int, p1:String):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("NetworkEarnFromJobX2")
	static function NetworkEarnFromJobX2(amount:Int, p1:String):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEarnFromPersonalVehicle")
	static function networkEarnFromPersonalVehicle(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic, p6:Dynamic, p7:Dynamic, p8:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEarnFromNotBadsport")
	static function networkEarnFromNotBadsport(amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEarnFromPickup")
	static function networkEarnFromPickup(amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEarnFromProperty")
	static function networkEarnFromProperty(amount:Int, propertyName:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("NetworkEarnFromSightseeing")
	static function NetworkEarnFromSightseeing(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkEarnFromRdrBonus")
	static function NetworkEarnFromRdrBonus(amount:Int, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEarnFromSellBunker")
	static function NetworkEarnFromSellBunker(amount:Int, bunkerHash:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * NativeDB Added Parameter 3: Any p2
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("NetworkEarnFromSellingVehicle")
	static function NetworkEarnFromSellingVehicle(amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEarnFromRockstar")
	static function networkEarnFromRockstar(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("NetworkEarnFromSpinTheWheelCash")
	static function NetworkEarnFromSpinTheWheelCash(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("NetworkEarnFromSmuggling")
	static function NetworkEarnFromSmuggling(amount:Int, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("NetworkEarnFromTunerFinale")
	static function NetworkEarnFromTunerFinale(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("NetworkEarnFromUpgradeAutoshopLocation")
	static function NetworkEarnFromUpgradeAutoshopLocation(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkEarnFromSellBase")
	static function NetworkEarnFromSellBase(amount:Int, baseNameHash:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkEarnFromTargetRefund")
	static function NetworkEarnFromTargetRefund(amount:Int, p1:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEarnFromVehicleExport")
	static function NetworkEarnFromVehicleExport(amount:Int, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("NetworkEarnFromVehicleAutoshop")
	static function NetworkEarnFromVehicleAutoshop(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEarnFromVehicle")
	static function networkEarnFromVehicle(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic, p6:Dynamic, p7:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("NetworkEarnFromWagePaymentBonus")
	static function NetworkEarnFromWagePaymentBonus(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("NetworkEarnFromTimeTrialWin")
	static function NetworkEarnFromTimeTrialWin(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("NetworkEarnFromWagePayment")
	static function NetworkEarnFromWagePayment(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("NetworkEarnFromTunerAward")
	static function NetworkEarnFromTunerAward(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkEarnGoon")
	static function NetworkEarnGoon(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkEarnJobBonusFirstTimeBonus")
	static function NetworkEarnJobBonusFirstTimeBonus(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("NetworkEarnFromVehicleAutoshopBonus")
	static function NetworkEarnFromVehicleAutoshopBonus(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkEarnJobBonusHeistAward")
	static function NetworkEarnJobBonusHeistAward(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 1: int amount
	 * NativeDB Added Parameter 2: int id
	 * ```
	 */
	@:native("NetworkEarnFromWarehouse")
	static function NetworkEarnFromWarehouse():Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("NetworkEarnIslandHeist")
	static function NetworkEarnIslandHeist(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NetworkGetPvcBalance")
	static function networkGetPvcBalance():Int;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NetworkGetEvcBalance")
	static function networkGetEvcBalance():Int;

	/**
	 * ```
	 * Same as 0x13A8DE2FD77D04F3.
	 * 
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NetworkGetRemainingTransferBalance")
	static function networkGetRemainingTransferBalance():Int;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NetworkGetIsHighEarner")
	static function NetworkGetIsHighEarner():Bool;

	/**
	 * ```
	 * Same as 0xEA560AC9EEB1E19B.
	 * ```
	 * 
	 * ```
	 * Same as 0xEA560AC9EEB1E19B.
	 * 
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NetworkGetPvcTransferBalance")
	static function networkGetPvcTransferBalance():Int;

	/**
	 * 
	 */
	@:native("NetworkGetStringBankBalance")
	static function networkGetStringBankBalance():String;

	/**
	 * ```
	 * Returns true if bank balance >= amount.
	 * 
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NetworkGetVcBankBalanceIsNotLessThan")
	static function NetworkGetVcBankBalanceIsNotLessThan(amount:Int):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NetworkGetStringBankWalletBalance")
	static function networkGetStringBankWalletBalance():String;

	/**
	 * 
	 */
	@:native("NetworkGetVcBankBalance")
	static function networkGetVcBankBalance():Int;

	/**
	 * 
	 */
	@:native("NetworkGetVcWalletBalance")
	static function networkGetVcWalletBalance(characterSlot:Int):Int;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NetworkGetStringWalletBalance")
	static function networkGetStringWalletBalance(characterSlot:Int):String;

	/**
	 * 
	 */
	@:native("NetworkGivePlayerJobshareCash")
	static function networkGivePlayerJobshareCash(amount:Int, networkHandle:Dynamic):Dynamic;

	/**
	 * ```
	 * Returns true if bank balance + wallet balance >= amount.
	 * ```
	 */
	@:native("NetworkGetVcBankWalletBalanceIsNotLessThan")
	static function NetworkGetVcBankWalletBalanceIsNotLessThan(amount:Int, characterSlot:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkInitializeCash")
	static function networkInitializeCash(wallet:Int, bank:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkGetVcBalance")
	static function networkGetVcBalance():Int;

	/**
	 * ```
	 * Returns true if wallet balance >= amount.
	 * 
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NetworkGetVcWalletBalanceIsNotLessThan")
	static function NetworkGetVcWalletBalanceIsNotLessThan(amount:Int, characterSlot:Int):Bool;

	/**
	 * 
	 */
	@:native("NetworkMoneyCanBet")
	static function networkMoneyCanBet(amount:Int, p1:Bool, p2:Bool):Bool;

	/**
	 * 
	 */
	@:native("NetworkPayEmployeeWage")
	static function networkPayEmployeeWage(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkManualDeleteCharacter")
	static function NetworkManualDeleteCharacter(characterSlot:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkPayMatchEntryFee")
	static function networkPayMatchEntryFee(amount:Int, matchId:String, p2:Bool, p3:Bool):Dynamic;

	/**
	 * ```
	 * index  
	 * -------  
	 * See function sub_1005 in am_boat_taxi.ysc  
	 * context  
	 * ----------  
	 * "BACKUP_VAGOS"  
	 * "BACKUP_LOST"  
	 * "BACKUP_FAMILIES"  
	 * "HIRE_MUGGER"  
	 * "HIRE_MERCENARY"  
	 * "BUY_CARDROPOFF"  
	 * "HELI_PICKUP"  
	 * "BOAT_PICKUP"  
	 * "CLEAR_WANTED"  
	 * "HEAD_2_HEAD"  
	 * "CHALLENGE"  
	 * "SHARE_LAST_JOB"  
	 * "DEFAULT"  
	 * reason  
	 * ---------  
	 * "NOTREACHTARGET"  
	 * "TARGET_ESCAPE"  
	 * "DELIVERY_FAIL"  
	 * "NOT_USED"  
	 * "TEAM_QUIT"  
	 * "SERVER_ERROR"  
	 * "RECEIVE_LJ_L"  
	 * "CHALLENGE_PLAYER_LEFT"  
	 * "DEFAULT"  
	 * unk  
	 * -----  
	 * Unknown bool value  
	 * ```
	 */
	@:native("NetworkRefundCash")
	static function networkRefundCash(index:Int, context:String, reason:String, unk:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkPayUtilityBill")
	static function networkPayUtilityBill(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkReceivePlayerJobshareCash")
	static function networkReceivePlayerJobshareCash(value:Int, networkHandle:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("NetworkSpentArcadeGame")
	static function NetworkSpentArcadeGame(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("NetworkSpentArcadeGeneric")
	static function NetworkSpentArcadeGeneric(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("NetworkSpentArenaSpectatorBox")
	static function NetworkSpentArenaSpectatorBox(amount:Int, p1:Dynamic, p2:Bool, p3:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentAmmoDrop")
	static function networkSpentAmmoDrop(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkRivalDeliveryCompleted")
	static function NetworkRivalDeliveryCompleted(earnedMoney:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("NetworkSpentArenaPremium")
	static function NetworkSpentArenaPremium(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("NetworkSpentArenaJoinSpectator")
	static function NetworkSpentArenaJoinSpectator(amount:Int, p1:Dynamic, p2:Bool, p3:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("NetworkSpentAutoshopModifications")
	static function NetworkSpentAutoshopModifications(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("NetworkSpentAutoshopPropertyUtilityFee")
	static function NetworkSpentAutoshopPropertyUtilityFee(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentBoatPickup")
	static function networkSpentBoatPickup(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentBaService")
	static function NetworkSpentBaService(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentArrestBail")
	static function networkSpentArrestBail(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentBounty")
	static function networkSpentBounty(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("NetworkSpentBeachPartyGeneric")
	static function NetworkSpentBeachPartyGeneric(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NetworkSpentBankInterest")
	static function networkSpentBankInterest(p0:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentBallisticEquipment")
	static function NetworkSpentBallisticEquipment(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentBullShark")
	static function networkSpentBullShark(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentBetting")
	static function networkSpentBetting(amount:Int, p1:Int, matchId:String, p3:Bool, p4:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("NetworkSpentBikeShopModify")
	static function NetworkSpentBikeShopModify(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentBusiness")
	static function NetworkSpentBusiness(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkSpentBuyBase")
	static function NetworkSpentBuyBase(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 1: int amount
	 * NativeDB Added Parameter 2: BOOL p1
	 * NativeDB Added Parameter 3: BOOL p2
	 * ```
	 */
	@:native("NetworkSpentBoss")
	static function NetworkSpentBoss():Bool;

	/**
	 * 
	 */
	@:native("NetworkSpentBuyOfftheradar")
	static function networkSpentBuyOfftheradar(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("NetworkSpentBuyAutoshop")
	static function NetworkSpentBuyAutoshop(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("NetworkSpentBountyHunterMission")
	static function NetworkSpentBountyHunterMission(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("NetworkSpentBuyCasino")
	static function NetworkSpentBuyCasino(amount:Int, p1:Bool, p2:Bool, data:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("NetworkSpentBuyArena")
	static function NetworkSpentBuyArena(amount:Int, p1:Bool, p2:Bool, p3:String):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentBuyTruck")
	static function NetworkSpentBuyTruck(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentBuyBunker")
	static function NetworkSpentBuyBunker(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkSpentBuyTiltrotor")
	static function NetworkSpentBuyTiltrotor(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("NetworkSpentCarclubMembership")
	static function NetworkSpentCarclubMembership(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("NetworkSpentCarclub")
	static function NetworkSpentCarclub(p0:Dynamic, p1:Bool, p2:Bool, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentBuyRevealPlayers")
	static function networkSpentBuyRevealPlayers(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentBuyPassiveMode")
	static function networkSpentBuyPassiveMode(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentCarwash")
	static function networkSpentCarwash(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Bool, p4:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentCashDrop")
	static function networkSpentCashDrop(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("NetworkSpentCasinoHeistSkipMission")
	static function NetworkSpentCasinoHeistSkipMission(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("NetworkSpentCasinoGeneric")
	static function NetworkSpentCasinoGeneric(amount:Int, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentBuyWantedlevel")
	static function networkSpentBuyWantedlevel(p0:Dynamic, p1:Dynamic, p2:Bool, p3:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentCallPlayer")
	static function networkSpentCallPlayer(p0:Dynamic, p1:Dynamic, p2:Bool, p3:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentCinema")
	static function networkSpentCinema(p0:Dynamic, p1:Dynamic, p2:Bool, p3:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("NetworkSpentCasinoHeist")
	static function NetworkSpentCasinoHeist(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic, p6:Dynamic, p7:Dynamic, p8:Dynamic, p9:Dynamic, p10:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("NetworkSpentCargoSourcing")
	static function NetworkSpentCargoSourcing(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("NetworkSpentCarclubTakeover")
	static function NetworkSpentCarclubTakeover(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentFromRockstar")
	static function networkSpentFromRockstar(bank:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("NetworkSpentCasinoMembership")
	static function NetworkSpentCasinoMembership(amount:Int, p1:Bool, p2:Bool, p3:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("NetworkSpentCasinoClubGeneric")
	static function NetworkSpentCasinoClubGeneric(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic, p6:Dynamic, p7:Dynamic, p8:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("NetworkSpentFromBank")
	static function NetworkSpentFromBank(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkSpentEmployAssassins")
	static function NetworkSpentEmployAssassins(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkSpentGangopsStartMission")
	static function NetworkSpentGangopsStartMission(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkSpentGangopsStartStrand")
	static function NetworkSpentGangopsStartStrand(type:Int, amount:Int, p2:Bool, p3:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkSpentGangopsCannon")
	static function NetworkSpentGangopsCannon(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("NetworkSpentHangarStaffCharges")
	static function NetworkSpentHangarStaffCharges(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkSpentGangopsTripSkip")
	static function NetworkSpentGangopsTripSkip(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("NetworkSpentGunrunningContactService")
	static function NetworkSpentGunrunningContactService(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentHoldups")
	static function networkSpentHoldups(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("NetworkSpentHangarUtilityCharges")
	static function NetworkSpentHangarUtilityCharges(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentHeliPickup")
	static function networkSpentHeliPickup(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * Only used once in a script (am_contact_requests)  
	 * p1 = 0  
	 * p2 = 1  
	 * ```
	 */
	@:native("NetworkSpentHireMugger")
	static function networkSpentHireMugger(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentHireMercenary")
	static function networkSpentHireMercenary(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("NetworkSpentImAbility")
	static function NetworkSpentImAbility(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("NetworkSpentIslandHeist")
	static function NetworkSpentIslandHeist(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentInStripclub")
	static function networkSpentInStripclub(p0:Dynamic, p1:Bool, p2:Dynamic, p3:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentJukebox")
	static function NetworkSpentJukebox(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentImportExportRepair")
	static function NetworkSpentImportExportRepair(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("NetworkSpentNightclubEntryFee")
	static function NetworkSpentNightclubEntryFee(player:Dynamic, amount:Int, p1:Dynamic, p2:Bool, p3:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NetworkSpentJobSkip")
	static function NetworkSpentJobSkip(amount:Int, matchId:String, p2:Bool, p3:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentMoveYacht")
	static function NetworkSpentMoveYacht(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("NetworkSpentMakeItRain")
	static function NetworkSpentMakeItRain(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("NetworkSpentNightclubBarDrink")
	static function NetworkSpentNightclubBarDrink(amount:Int, p1:Dynamic, p2:Bool, p3:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentNoCops")
	static function networkSpentNoCops(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentOrderBodyguardVehicle")
	static function NetworkSpentOrderBodyguardVehicle(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentOrderWarehouseVehicle")
	static function NetworkSpentOrderWarehouseVehicle(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentPayGoon")
	static function NetworkSpentPayGoon(p0:Int, p1:Int, amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentPaServiceHeliPickup")
	static function NetworkSpentPaServiceHeliPickup(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentPaServiceDancer")
	static function NetworkSpentPaServiceDancer(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * According to how I understood this in the freemode script alone,
	 * The first parameter is determined by a function named, func_5749 within the freemode script which has a list of all the vehicles and a set price to return which some vehicles deals with globals as well. So the first parameter is basically the set in stone insurance cost it's gonna charge you for that specific vehicle model.
	 * The second parameter whoever put it was right, they call GET_ENTITY_MODEL with the vehicle as the paremeter.
	 * The third parameter is the network handle as they call their little struct<13> func or atleast how the script decompiled it to look which in lamens terms just returns the network handle of the previous owner based on DECOR_GET_INT(vehicle, "Previous_Owner").
	 * The fourth parameter is a bool that returns true/false depending on if your bank balance is greater then 0.
	 * The fifth and last parameter is a bool that returns true/false depending on if you have the money for the car based on the cost returned by func_5749. In the freemode script eg,
	 * bool hasTheMoney = MONEY::_GET_BANK_BALANCE() < carCost.
	 * ```
	 */
	@:native("NetworkSpentPayVehicleInsurancePremium")
	static function networkSpentPayVehicleInsurancePremium(amount:Int, vehicleModel:Int, networkHandle:Dynamic, notBankrupt:Bool, hasTheMoney:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentPayBoss")
	static function NetworkSpentPayBoss(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentPlayerHealthcare")
	static function networkSpentPlayerHealthcare(p0:Int, p1:Int, p2:Bool, p3:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("NetworkSpentPurchaseHangar")
	static function NetworkSpentPurchaseHangar(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentProstitutes")
	static function networkSpentProstitutes(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentPurchaseWarehouse")
	static function NetworkSpentPurchaseWarehouse(amount:Int, data:Dynamic, p2:Bool, p3:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("NetworkSpentRdrhatchetBonus")
	static function NetworkSpentRdrhatchetBonus(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("NetworkSpentRehireDj")
	static function NetworkSpentRehireDj(amount:Int, p1:Dynamic, p2:Bool, p3:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentRequestJob")
	static function networkSpentRequestJob(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentRenameOrganization")
	static function NetworkSpentRenameOrganization(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentRobbedByMugger")
	static function networkSpentRobbedByMugger(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentTaxi")
	static function networkSpentTaxi(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentRequestHeist")
	static function networkSpentRequestHeist(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * 
	 * NativeDB Removed Parameter 4: BOOL p3
	 * ```
	 */
	@:native("NetworkSpentSpinTheWheelPayment")
	static function NetworkSpentSpinTheWheelPayment(amount:Int, p1:Dynamic, p2:Bool, p3:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("NetworkSpentUpgradeArena")
	static function NetworkSpentUpgradeArena(amount:Int, p1:Bool, p2:Bool, p3:String):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("NetworkSpentSalesDisplay")
	static function NetworkSpentSalesDisplay(p0:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentTelescope")
	static function networkSpentTelescope(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("NetworkSpentUpgradeCasino")
	static function NetworkSpentUpgradeCasino(amount:Int, p1:Bool, p2:Bool, data:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("NetworkSpentUpgradeAutoshop")
	static function NetworkSpentUpgradeAutoshop(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentUpgradeBunker")
	static function NetworkSpentUpgradeBunker(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("NetworkSpentSubmarine")
	static function NetworkSpentSubmarine(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("NetworkSpentUpgradeHangar")
	static function NetworkSpentUpgradeHangar(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("NetworkSpentUpgradeSub")
	static function NetworkSpentUpgradeSub(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkSpentUpgradeBase")
	static function NetworkSpentUpgradeBase(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentUpgradeTruck")
	static function NetworkSpentUpgradeTruck(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("NetworkSpentUpgradeTiltrotor")
	static function NetworkSpentUpgradeTiltrotor(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("NetworkSpentVehicleRequested")
	static function NetworkSpentVehicleRequested(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentVehicleExportMods")
	static function NetworkSpentVehicleExportMods(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic, p6:Dynamic, p7:Dynamic, p8:Dynamic, p9:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentWager")
	static function NetworkSpentWager(p0:Dynamic, p1:Dynamic, amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NetworkSpentVipUtilityCharges")
	static function NetworkSpentVipUtilityCharges(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("ProcessCashGift")
	static function processCashGift(p0:Dynamic, p1:Dynamic, p2:String):String;

	/**
	 * ```
	 * Does nothing and always returns 0.
	 * ```
	 */
	@:native("WithdrawVc")
	static function withdrawVc(amount:Int):Int;

}
