package fivem.client.natives;

@:native("_G")
extern class Money {
	/**
	 * ```
	 * Does nothing and always returns false.
	 * ```
	 */
	@:native("DEPOSIT_VC")
	static function depositVc(amount:Int):Bool;

	/**
	 * ```
	 * NativeDB Added Parameter 1: int p0
	 * NativeDB Added Parameter 2: int p1
	 * NativeDB Added Parameter 3: int amount
	 * NativeDB Added Parameter 4: int* p3
	 * ```
	 */
	@:native("_CAN_PAY_GOON")
	static function CanPayGoon():Bool;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NETWORK_BUY_BACKUP_GANG")
	static function networkBuyBackupGang(p0:Int, p1:Int, p2:Bool, p3:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_BUY_CONTRABAND")
	static function NetworkBuyContraband(p0:Int, p1:Int, p2:Int, p3:Bool, p4:Bool):Dynamic;

	/**
	 * ```
	 * p1 = 0 (always)  
	 * p2 = 1 (always)  
	 * ```
	 */
	@:native("NETWORK_BUY_AIRSTRIKE")
	static function networkBuyAirstrike(cost:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * The first parameter is the amount spent which is store in a global when this native is called. The global returns 10. Which is the price for both rides.  
	 * The last 3 parameters are,   
	 * 2,0,1 in the am_ferriswheel.c  
	 * 1,0,1 in the am_rollercoaster.c  
	 * ```
	 */
	@:native("NETWORK_BUY_FAIRGROUND_RIDE")
	static function networkBuyFairgroundRide(amountSpent:Int, p1:Dynamic, p2:Bool, p3:Bool):Dynamic;

	/**
	 * ```
	 * p1 is just an assumption. p2 was false and p3 was true.  
	 * ```
	 */
	@:native("NETWORK_BUY_BOUNTY")
	static function networkBuyBounty(amount:Int, victim:Dynamic, p2:Bool, p3:Bool):Dynamic;

	/**
	 * ```
	 * p1 = 0 (always)  
	 * p2 = 1 (always)  
	 * ```
	 */
	@:native("NETWORK_BUY_HELI_STRIKE")
	static function networkBuyHeliStrike(cost:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_BUY_ITEM")
	static function networkBuyItem(amount:Int, item:Int, p2:Dynamic, p3:Dynamic, p4:Bool, item_name:String, p6:Dynamic, p7:Dynamic, p8:Dynamic, p9:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_BUY_HEALTHCARE")
	static function networkBuyHealthcare(cost:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NETWORK_BUY_SMOKES")
	static function networkBuySmokes(p0:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_CAN_BET")
	static function networkCanBet(amount:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_CAN_SHARE_JOB_CASH")
	static function networkCanShareJobCash():Bool;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NETWORK_BUY_LOTTERY_TICKET")
	static function networkBuyLotteryTicket(p0:Int, p1:Int, p2:Bool, p3:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 6: Any p5
	 * ```
	 */
	@:native("NETWORK_CAN_SPEND_MONEY")
	static function networkCanSpendMoney(p0:Dynamic, p1:Bool, p2:Bool, p3:Bool, p4:Dynamic):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_BUY_PROPERTY")
	static function networkBuyProperty(propertyCost:Int, propertyName:Int, p2:Bool, p3:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NETWORK_CAN_BUY_LOTTERY_TICKET")
	static function networkCanBuyLotteryTicket(cost:Int):Bool;

	/**
	 * Same as 0x8968D4D8C6C40C11.
	 * NETWORK_C\*
	 * 
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_NETWORK_CASINO_CAN_PURCHASE_CHIPS_WITH_PVC")
	static function NetworkCasinoCanPurchaseChipsWithPvc():Bool;

	/**
	 * Same as 0x394DCDB9E836B7A9.
	 * NETWORK_C\*
	 * 
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_NETWORK_CASINO_CAN_PURCHASE_CHIPS_WITH_PVC_2")
	static function NetworkCasinoCanPurchaseChipsWithPvc2():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_CAN_RECEIVE_PLAYER_CASH")
	static function networkCanReceivePlayerCash(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Bool;

	/**
	 * NETWORK_C\*
	 * 
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_NETWORK_CASINO_CAN_GAMBLE")
	static function NetworkCasinoCanGamble(p0:Dynamic):Bool;

	/**
	 * NETWORK_C\*
	 * 
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_NETWORK_CASINO_PURCHASE_CHIPS")
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
	@:native("_NETWORK_CAN_SPEND_MONEY_2")
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
	@:native("_NETWORK_CASINO_CAN_USE_GAMBLING_TYPE")
	static function NetworkCasinoCanUseGamblingType(hash:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_CLEAR_CHARACTER_WALLET")
	static function networkClearCharacterWallet(characterSlot:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_EARN_BOSS")
	static function NetworkEarnBoss(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * ```
	 * Note the 2nd parameters are always 1, 0. I have a feeling it deals with your money, wallet, bank. So when you delete the character it of course wipes the wallet cash at that time. So if that was the case, it would be eg, NETWORK_DELETE_CHARACTER(characterIndex, deleteWalletCash, deleteBankCash);  
	 * ```
	 */
	@:native("NETWORK_DELETE_CHARACTER")
	static function networkDeleteCharacter(characterSlot:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("_NETWORK_DEDUCT_CASH")
	static function NetworkDeductCash(amount:Int, p1:String, p2:String, p3:Bool, p4:Bool, p5:Bool):Dynamic;

	/**
	 * NETWORK_C\*
	 * 
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_NETWORK_CASINO_SELL_CHIPS")
	static function NetworkCasinoSellChips(p0:Int, p1:Int):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("_NETWORK_EARN_CASINO_HEIST_BONUS")
	static function NetworkEarnCasinoHeistBonus(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("_NETWORK_EARN_CASINO_HEIST")
	static function NetworkEarnCasinoHeist(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic, p6:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_EARN_BOSS_AGENCY")
	static function NetworkEarnBossAgency(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * DSPORT  
	 * ```
	 */
	@:native("NETWORK_EARN_FROM_AI_TARGET_KILL")
	static function networkEarnFromAiTargetKill(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("_NETWORK_EARN_FMBB_WAGE_BONUS")
	static function NetworkEarnFmbbWageBonus(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("_NETWORK_EARN_BOUNTY_HUNTER_REWARD")
	static function NetworkEarnBountyHunterReward(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_ARENA_SKILL_LEVEL_PROGRESSION")
	static function NetworkEarnFromArenaSkillLevelProgression(amount:Int, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2060
	 * ```
	 */
	@:native("_NETWORK_EARN_COLLECTABLE_COMPLETED_COLLECTION")
	static function NetworkEarnCollectableCompletedCollection(amount:Int, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * Example for p1: "AM_DISTRACT_COPS"  
	 * ```
	 */
	@:native("NETWORK_EARN_FROM_AMBIENT_JOB")
	static function networkEarnFromAmbientJob(p0:Int, p1:String, p2:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_ASSASSINATE_TARGET_KILLED_2")
	static function NetworkEarnFromAssassinateTargetKilled2(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_ARENA_WAR")
	static function NetworkEarnFromArenaWar(amount:Int, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_ARENA_CAREER_PROGRESSION")
	static function NetworkEarnFromArenaCareerProgression(amount:Int, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_ASSASSINATE_TARGET_KILLED")
	static function NetworkEarnFromAssassinateTargetKilled(amount:Int):Dynamic;

	/**
	 * ```
	 * For the money bags that drop a max of $40,000. Often called 40k bags.
	 * Most likely NETWORK_EARN_FROM_ROB***
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_ARMOUR_TRUCK")
	static function NetworkEarnFromArmourTruck(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_BB_EVENT_BONUS")
	static function NetworkEarnFromBbEventBonus(amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_EARN_FROM_BETTING")
	static function networkEarnFromBetting(amount:Int, p1:String):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_AUTOSHOP_BUSINESS")
	static function NetworkEarnFromAutoshopBusiness(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_EARN_FROM_BEND_JOB")
	static function networkEarnFromBendJob(amount:Int, heistHash:String):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_AUTOSHOP_INCOME")
	static function NetworkEarnFromAutoshopIncome(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_BIKE_SHOP_BUSINESS")
	static function NetworkEarnFromBikeShopBusiness(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_BIKER_INCOME")
	static function NetworkEarnFromBikerIncome(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_BB_EVENT_CARGO")
	static function NetworkEarnFromBbEventCargo(amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_EARN_FROM_BOUNTY")
	static function networkEarnFromBounty(amount:Int, networkHandle:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_BUSINESS_HUB_SELL")
	static function NetworkEarnFromBusinessHubSell(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_EARN_FROM_BUSINESS_PRODUCT")
	static function NetworkEarnFromBusinessProduct(amount:Int, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_BUSINESS_BATTLE")
	static function NetworkEarnFromBusinessBattle(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_CARCLUB_MEMBERSHIP")
	static function NetworkEarnFromCarclubMembership(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_CASHING_OUT")
	static function NetworkEarnFromCashingOut(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_CASINO_MISSION_PARTICIPATION")
	static function NetworkEarnFromCasinoMissionParticipation(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_BUSINESS_HUB_SOURCE")
	static function NetworkEarnFromBusinessHubSource(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_CASINO_AWARD")
	static function NetworkEarnFromCasinoAward(amount:Int, hash:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_CASINO_MISSION_REWARD")
	static function NetworkEarnFromCasinoMissionReward(amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_EARN_FROM_CHALLENGE_WIN")
	static function networkEarnFromChallengeWin(p0:Dynamic, p1:Dynamic, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_CASINO_STORY_MISSION_REWARD")
	static function NetworkEarnFromCasinoStoryMissionReward(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_CLUB_MANAGEMENT_PARTICIPATION")
	static function NetworkEarnFromClubManagementParticipation(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_COLLECTION_ITEM")
	static function NetworkEarnFromCollectionItem(amount:Int, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_EARN_FROM_CRATE_DROP")
	static function networkEarnFromCrateDrop(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_COLLECTABLES_ACTION_FIGURES")
	static function NetworkEarnFromCollectablesActionFigures(amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_EARN_FROM_CONTRABAND")
	static function NetworkEarnFromContraband(amount:Int, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_COMPLETE_COLLECTION")
	static function NetworkEarnFromCompleteCollection(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_CRIMINAL_MASTERMIND_BONUS")
	static function NetworkEarnFromCriminalMastermindBonus(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_EARN_FROM_DAILY_OBJECTIVES")
	static function networkEarnFromDailyObjectives(p0:Int, p1:String, p2:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_DAR_CHALLENGE")
	static function NetworkEarnFromDarChallenge(amount:Int, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_DOOMSDAY_FINALE_BONUS")
	static function NetworkEarnFromDoomsdayFinaleBonus(amount:Int, vehicleHash:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_DAILY_OBJECTIVE_EVENT")
	static function NetworkEarnFromDailyObjectiveEvent(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_FMBB_PHONECALL_MISSION")
	static function NetworkEarnFromFmbbPhonecallMission(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_EARN_FROM_DESTROYING_CONTRABAND")
	static function NetworkEarnFromDestroyingContraband(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_FMBB_BOSS_WORK")
	static function NetworkEarnFromFmbbBossWork(p0:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_EARN_FROM_GANG_PICKUP")
	static function NetworkEarnFromGangPickup(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_GANGOPS_JOBS_FINALE")
	static function NetworkEarnFromGangopsJobsFinale(amount:Int, unk:String):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_GANGOPS_AWARDS")
	static function NetworkEarnFromGangopsAwards(amount:Int, unk:String, p2:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_GANGOPS_ELITE")
	static function NetworkEarnFromGangopsElite(amount:Int, unk:String, actIndex:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_GANGOPS_JOBS_SETUP")
	static function NetworkEarnFromGangopsJobsSetup(amount:Int, unk:String):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_GANGOPS_WAGES")
	static function NetworkEarnFromGangopsWages(amount:Int, p1:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_HACKER_TRUCK_MISSION")
	static function NetworkEarnFromHackerTruckMission(p0:Dynamic, amount:Int, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_GANGOPS_WAGES_BONUS")
	static function NetworkEarnFromGangopsWagesBonus(amount:Int, p1:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_EARN_FROM_HOLDUPS")
	static function networkEarnFromHoldups(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_GANGOPS_JOBS_PREP_PARTICIPATION")
	static function NetworkEarnFromGangopsJobsPrepParticipation(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NETWORK_EARN_FROM_JOB_BONUS")
	static function networkEarnFromJobBonus(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_EARN_FROM_PREMIUM_JOB")
	static function NetworkEarnFromPremiumJob(amount:Int, p1:String):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_EARN_FROM_IMPORT_EXPORT")
	static function networkEarnFromImportExport(amount:Int, modelHash:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_RC_TIME_TRIAL")
	static function NetworkEarnFromRcTimeTrial(amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_EARN_FROM_JOB")
	static function networkEarnFromJob(amount:Int, p1:String):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_JOB_X2")
	static function NetworkEarnFromJobX2(amount:Int, p1:String):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_EARN_FROM_PERSONAL_VEHICLE")
	static function networkEarnFromPersonalVehicle(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic, p6:Dynamic, p7:Dynamic, p8:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_EARN_FROM_NOT_BADSPORT")
	static function networkEarnFromNotBadsport(amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_EARN_FROM_PICKUP")
	static function networkEarnFromPickup(amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_EARN_FROM_PROPERTY")
	static function networkEarnFromProperty(amount:Int, propertyName:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_SIGHTSEEING")
	static function NetworkEarnFromSightseeing(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_RDR_BONUS")
	static function NetworkEarnFromRdrBonus(amount:Int, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_EARN_FROM_SELL_BUNKER")
	static function NetworkEarnFromSellBunker(amount:Int, bunkerHash:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 2: Any p1
	 * NativeDB Added Parameter 3: Any p2
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_SELLING_VEHICLE")
	static function NetworkEarnFromSellingVehicle(amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_EARN_FROM_ROCKSTAR")
	static function networkEarnFromRockstar(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_SPIN_THE_WHEEL_CASH")
	static function NetworkEarnFromSpinTheWheelCash(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_SMUGGLING")
	static function NetworkEarnFromSmuggling(amount:Int, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_TUNER_FINALE")
	static function NetworkEarnFromTunerFinale(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_UPGRADE_AUTOSHOP_LOCATION")
	static function NetworkEarnFromUpgradeAutoshopLocation(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_SELL_BASE")
	static function NetworkEarnFromSellBase(amount:Int, baseNameHash:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_TARGET_REFUND")
	static function NetworkEarnFromTargetRefund(amount:Int, p1:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_EARN_FROM_VEHICLE_EXPORT")
	static function NetworkEarnFromVehicleExport(amount:Int, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_VEHICLE_AUTOSHOP")
	static function NetworkEarnFromVehicleAutoshop(p0:Dynamic, p1:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_EARN_FROM_VEHICLE")
	static function networkEarnFromVehicle(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic, p6:Dynamic, p7:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_WAGE_PAYMENT_BONUS")
	static function NetworkEarnFromWagePaymentBonus(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_TIME_TRIAL_WIN")
	static function NetworkEarnFromTimeTrialWin(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_WAGE_PAYMENT")
	static function NetworkEarnFromWagePayment(amount:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_TUNER_AWARD")
	static function NetworkEarnFromTunerAward(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_EARN_GOON")
	static function NetworkEarnGoon(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_EARN_JOB_BONUS_FIRST_TIME_BONUS")
	static function NetworkEarnJobBonusFirstTimeBonus(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_VEHICLE_AUTOSHOP_BONUS")
	static function NetworkEarnFromVehicleAutoshopBonus(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_EARN_JOB_BONUS_HEIST_AWARD")
	static function NetworkEarnJobBonusHeistAward(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 1: int amount
	 * NativeDB Added Parameter 2: int id
	 * ```
	 */
	@:native("_NETWORK_EARN_FROM_WAREHOUSE")
	static function NetworkEarnFromWarehouse():Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("_NETWORK_EARN_ISLAND_HEIST")
	static function NetworkEarnIslandHeist(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NETWORK_GET_PVC_BALANCE")
	static function networkGetPvcBalance():Int;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NETWORK_GET_EVC_BALANCE")
	static function networkGetEvcBalance():Int;

	/**
	 * ```
	 * Same as 0x13A8DE2FD77D04F3.
	 * 
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NETWORK_GET_REMAINING_TRANSFER_BALANCE")
	static function networkGetRemainingTransferBalance():Int;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("_NETWORK_GET_IS_HIGH_EARNER")
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
	@:native("NETWORK_GET_PVC_TRANSFER_BALANCE")
	static function networkGetPvcTransferBalance():Int;

	/**
	 * 
	 */
	@:native("NETWORK_GET_STRING_BANK_BALANCE")
	static function networkGetStringBankBalance():String;

	/**
	 * ```
	 * Returns true if bank balance >= amount.
	 * 
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("_NETWORK_GET_VC_BANK_BALANCE_IS_NOT_LESS_THAN")
	static function NetworkGetVcBankBalanceIsNotLessThan(amount:Int):Bool;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NETWORK_GET_STRING_BANK_WALLET_BALANCE")
	static function networkGetStringBankWalletBalance():String;

	/**
	 * 
	 */
	@:native("NETWORK_GET_VC_BANK_BALANCE")
	static function networkGetVcBankBalance():Int;

	/**
	 * 
	 */
	@:native("NETWORK_GET_VC_WALLET_BALANCE")
	static function networkGetVcWalletBalance(characterSlot:Int):Int;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NETWORK_GET_STRING_WALLET_BALANCE")
	static function networkGetStringWalletBalance(characterSlot:Int):String;

	/**
	 * 
	 */
	@:native("NETWORK_GIVE_PLAYER_JOBSHARE_CASH")
	static function networkGivePlayerJobshareCash(amount:Int, networkHandle:Dynamic):Dynamic;

	/**
	 * ```
	 * Returns true if bank balance + wallet balance >= amount.
	 * ```
	 */
	@:native("_NETWORK_GET_VC_BANK_WALLET_BALANCE_IS_NOT_LESS_THAN")
	static function NetworkGetVcBankWalletBalanceIsNotLessThan(amount:Int, characterSlot:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_INITIALIZE_CASH")
	static function networkInitializeCash(wallet:Int, bank:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_GET_VC_BALANCE")
	static function networkGetVcBalance():Int;

	/**
	 * ```
	 * Returns true if wallet balance >= amount.
	 * 
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("_NETWORK_GET_VC_WALLET_BALANCE_IS_NOT_LESS_THAN")
	static function NetworkGetVcWalletBalanceIsNotLessThan(amount:Int, characterSlot:Int):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_MONEY_CAN_BET")
	static function networkMoneyCanBet(amount:Int, p1:Bool, p2:Bool):Bool;

	/**
	 * 
	 */
	@:native("NETWORK_PAY_EMPLOYEE_WAGE")
	static function networkPayEmployeeWage(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_MANUAL_DELETE_CHARACTER")
	static function NetworkManualDeleteCharacter(characterSlot:Int):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_PAY_MATCH_ENTRY_FEE")
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
	@:native("NETWORK_REFUND_CASH")
	static function networkRefundCash(index:Int, context:String, reason:String, unk:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_PAY_UTILITY_BILL")
	static function networkPayUtilityBill(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_RECEIVE_PLAYER_JOBSHARE_CASH")
	static function networkReceivePlayerJobshareCash(value:Int, networkHandle:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("_NETWORK_SPENT_ARCADE_GAME")
	static function NetworkSpentArcadeGame(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("_NETWORK_SPENT_ARCADE_GENERIC")
	static function NetworkSpentArcadeGeneric(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("_NETWORK_SPENT_ARENA_SPECTATOR_BOX")
	static function NetworkSpentArenaSpectatorBox(amount:Int, p1:Dynamic, p2:Bool, p3:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_AMMO_DROP")
	static function networkSpentAmmoDrop(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_RIVAL_DELIVERY_COMPLETED")
	static function NetworkRivalDeliveryCompleted(earnedMoney:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("_NETWORK_SPENT_ARENA_PREMIUM")
	static function NetworkSpentArenaPremium(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("_NETWORK_SPENT_ARENA_JOIN_SPECTATOR")
	static function NetworkSpentArenaJoinSpectator(amount:Int, p1:Dynamic, p2:Bool, p3:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_NETWORK_SPENT_AUTOSHOP_MODIFICATIONS")
	static function NetworkSpentAutoshopModifications(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_NETWORK_SPENT_AUTOSHOP_PROPERTY_UTILITY_FEE")
	static function NetworkSpentAutoshopPropertyUtilityFee(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_BOAT_PICKUP")
	static function networkSpentBoatPickup(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_SPENT_BA_SERVICE")
	static function NetworkSpentBaService(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_ARREST_BAIL")
	static function networkSpentArrestBail(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_BOUNTY")
	static function networkSpentBounty(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("_NETWORK_SPENT_BEACH_PARTY_GENERIC")
	static function NetworkSpentBeachPartyGeneric(p0:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("NETWORK_SPENT_BANK_INTEREST")
	static function networkSpentBankInterest(p0:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_SPENT_BALLISTIC_EQUIPMENT")
	static function NetworkSpentBallisticEquipment(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_BULL_SHARK")
	static function networkSpentBullShark(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_BETTING")
	static function networkSpentBetting(amount:Int, p1:Int, matchId:String, p3:Bool, p4:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("_NETWORK_SPENT_BIKE_SHOP_MODIFY")
	static function NetworkSpentBikeShopModify(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_SPENT_BUSINESS")
	static function NetworkSpentBusiness(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_SPENT_BUY_BASE")
	static function NetworkSpentBuyBase(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Added Parameter 1: int amount
	 * NativeDB Added Parameter 2: BOOL p1
	 * NativeDB Added Parameter 3: BOOL p2
	 * ```
	 */
	@:native("_NETWORK_SPENT_BOSS")
	static function NetworkSpentBoss():Bool;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_BUY_OFFTHERADAR")
	static function networkSpentBuyOfftheradar(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_NETWORK_SPENT_BUY_AUTOSHOP")
	static function NetworkSpentBuyAutoshop(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("_NETWORK_SPENT_BOUNTY_HUNTER_MISSION")
	static function NetworkSpentBountyHunterMission(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_NETWORK_SPENT_BUY_CASINO")
	static function NetworkSpentBuyCasino(amount:Int, p1:Bool, p2:Bool, data:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("_NETWORK_SPENT_BUY_ARENA")
	static function NetworkSpentBuyArena(amount:Int, p1:Bool, p2:Bool, p3:String):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_SPENT_BUY_TRUCK")
	static function NetworkSpentBuyTruck(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_SPENT_BUY_BUNKER")
	static function NetworkSpentBuyBunker(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_SPENT_BUY_TILTROTOR")
	static function NetworkSpentBuyTiltrotor(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_NETWORK_SPENT_CARCLUB_MEMBERSHIP")
	static function NetworkSpentCarclubMembership(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_NETWORK_SPENT_CARCLUB")
	static function NetworkSpentCarclub(p0:Dynamic, p1:Bool, p2:Bool, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_BUY_REVEAL_PLAYERS")
	static function networkSpentBuyRevealPlayers(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_BUY_PASSIVE_MODE")
	static function networkSpentBuyPassiveMode(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_CARWASH")
	static function networkSpentCarwash(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Bool, p4:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_CASH_DROP")
	static function networkSpentCashDrop(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("_NETWORK_SPENT_CASINO_HEIST_SKIP_MISSION")
	static function NetworkSpentCasinoHeistSkipMission(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_NETWORK_SPENT_CASINO_GENERIC")
	static function NetworkSpentCasinoGeneric(amount:Int, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_BUY_WANTEDLEVEL")
	static function networkSpentBuyWantedlevel(p0:Dynamic, p1:Dynamic, p2:Bool, p3:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_CALL_PLAYER")
	static function networkSpentCallPlayer(p0:Dynamic, p1:Dynamic, p2:Bool, p3:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_CINEMA")
	static function networkSpentCinema(p0:Dynamic, p1:Dynamic, p2:Bool, p3:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1868
	 * ```
	 */
	@:native("_NETWORK_SPENT_CASINO_HEIST")
	static function NetworkSpentCasinoHeist(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic, p6:Dynamic, p7:Dynamic, p8:Dynamic, p9:Dynamic, p10:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("_NETWORK_SPENT_CARGO_SOURCING")
	static function NetworkSpentCargoSourcing(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_NETWORK_SPENT_CARCLUB_TAKEOVER")
	static function NetworkSpentCarclubTakeover(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_FROM_ROCKSTAR")
	static function networkSpentFromRockstar(bank:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_NETWORK_SPENT_CASINO_MEMBERSHIP")
	static function NetworkSpentCasinoMembership(amount:Int, p1:Bool, p2:Bool, p3:Int):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("_NETWORK_SPENT_CASINO_CLUB_GENERIC")
	static function NetworkSpentCasinoClubGeneric(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic, p6:Dynamic, p7:Dynamic, p8:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_NETWORK_SPENT_FROM_BANK")
	static function NetworkSpentFromBank(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_SPENT_EMPLOY_ASSASSINS")
	static function NetworkSpentEmployAssassins(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_SPENT_GANGOPS_START_MISSION")
	static function NetworkSpentGangopsStartMission(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_SPENT_GANGOPS_START_STRAND")
	static function NetworkSpentGangopsStartStrand(type:Int, amount:Int, p2:Bool, p3:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_SPENT_GANGOPS_CANNON")
	static function NetworkSpentGangopsCannon(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("_NETWORK_SPENT_HANGAR_STAFF_CHARGES")
	static function NetworkSpentHangarStaffCharges(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_SPENT_GANGOPS_TRIP_SKIP")
	static function NetworkSpentGangopsTripSkip(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("_NETWORK_SPENT_GUNRUNNING_CONTACT_SERVICE")
	static function NetworkSpentGunrunningContactService(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_HOLDUPS")
	static function networkSpentHoldups(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("_NETWORK_SPENT_HANGAR_UTILITY_CHARGES")
	static function NetworkSpentHangarUtilityCharges(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_HELI_PICKUP")
	static function networkSpentHeliPickup(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * Only used once in a script (am_contact_requests)  
	 * p1 = 0  
	 * p2 = 1  
	 * ```
	 */
	@:native("NETWORK_SPENT_HIRE_MUGGER")
	static function networkSpentHireMugger(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_HIRE_MERCENARY")
	static function networkSpentHireMercenary(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_NETWORK_SPENT_IM_ABILITY")
	static function NetworkSpentImAbility(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("_NETWORK_SPENT_ISLAND_HEIST")
	static function NetworkSpentIslandHeist(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_IN_STRIPCLUB")
	static function networkSpentInStripclub(p0:Dynamic, p1:Bool, p2:Dynamic, p3:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_SPENT_JUKEBOX")
	static function NetworkSpentJukebox(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_SPENT_IMPORT_EXPORT_REPAIR")
	static function NetworkSpentImportExportRepair(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("_NETWORK_SPENT_NIGHTCLUB_ENTRY_FEE")
	static function NetworkSpentNightclubEntryFee(player:Dynamic, amount:Int, p1:Dynamic, p2:Bool, p3:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v323
	 * ```
	 */
	@:native("_NETWORK_SPENT_JOB_SKIP")
	static function NetworkSpentJobSkip(amount:Int, matchId:String, p2:Bool, p3:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_SPENT_MOVE_YACHT")
	static function NetworkSpentMoveYacht(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("_NETWORK_SPENT_MAKE_IT_RAIN")
	static function NetworkSpentMakeItRain(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("_NETWORK_SPENT_NIGHTCLUB_BAR_DRINK")
	static function NetworkSpentNightclubBarDrink(amount:Int, p1:Dynamic, p2:Bool, p3:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_NO_COPS")
	static function networkSpentNoCops(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_SPENT_ORDER_BODYGUARD_VEHICLE")
	static function NetworkSpentOrderBodyguardVehicle(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_SPENT_ORDER_WAREHOUSE_VEHICLE")
	static function NetworkSpentOrderWarehouseVehicle(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_SPENT_PAY_GOON")
	static function NetworkSpentPayGoon(p0:Int, p1:Int, amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_SPENT_PA_SERVICE_HELI_PICKUP")
	static function NetworkSpentPaServiceHeliPickup(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_SPENT_PA_SERVICE_DANCER")
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
	@:native("NETWORK_SPENT_PAY_VEHICLE_INSURANCE_PREMIUM")
	static function networkSpentPayVehicleInsurancePremium(amount:Int, vehicleModel:Int, networkHandle:Dynamic, notBankrupt:Bool, hasTheMoney:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_SPENT_PAY_BOSS")
	static function NetworkSpentPayBoss(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_PLAYER_HEALTHCARE")
	static function networkSpentPlayerHealthcare(p0:Int, p1:Int, p2:Bool, p3:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("_NETWORK_SPENT_PURCHASE_HANGAR")
	static function NetworkSpentPurchaseHangar(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_PROSTITUTES")
	static function networkSpentProstitutes(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_SPENT_PURCHASE_WAREHOUSE")
	static function NetworkSpentPurchaseWarehouse(amount:Int, data:Dynamic, p2:Bool, p3:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("_NETWORK_SPENT_RDRHATCHET_BONUS")
	static function NetworkSpentRdrhatchetBonus(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1493
	 * ```
	 */
	@:native("_NETWORK_SPENT_REHIRE_DJ")
	static function NetworkSpentRehireDj(amount:Int, p1:Dynamic, p2:Bool, p3:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_REQUEST_JOB")
	static function networkSpentRequestJob(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_SPENT_RENAME_ORGANIZATION")
	static function NetworkSpentRenameOrganization(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_ROBBED_BY_MUGGER")
	static function networkSpentRobbedByMugger(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_TAXI")
	static function networkSpentTaxi(amount:Int, p1:Bool, p2:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_REQUEST_HEIST")
	static function networkSpentRequestHeist(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * 
	 * NativeDB Removed Parameter 4: BOOL p3
	 * ```
	 */
	@:native("_NETWORK_SPENT_SPIN_THE_WHEEL_PAYMENT")
	static function NetworkSpentSpinTheWheelPayment(amount:Int, p1:Dynamic, p2:Bool, p3:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1604
	 * ```
	 */
	@:native("_NETWORK_SPENT_UPGRADE_ARENA")
	static function NetworkSpentUpgradeArena(amount:Int, p1:Bool, p2:Bool, p3:String):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("_NETWORK_SPENT_SALES_DISPLAY")
	static function NetworkSpentSalesDisplay(p0:Bool):Dynamic;

	/**
	 * 
	 */
	@:native("NETWORK_SPENT_TELESCOPE")
	static function networkSpentTelescope(p0:Dynamic, p1:Bool, p2:Bool):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1734
	 * ```
	 */
	@:native("_NETWORK_SPENT_UPGRADE_CASINO")
	static function NetworkSpentUpgradeCasino(amount:Int, p1:Bool, p2:Bool, data:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2372
	 * ```
	 */
	@:native("_NETWORK_SPENT_UPGRADE_AUTOSHOP")
	static function NetworkSpentUpgradeAutoshop(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_SPENT_UPGRADE_BUNKER")
	static function NetworkSpentUpgradeBunker(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("_NETWORK_SPENT_SUBMARINE")
	static function NetworkSpentSubmarine(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1180
	 * ```
	 */
	@:native("_NETWORK_SPENT_UPGRADE_HANGAR")
	static function NetworkSpentUpgradeHangar(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2189
	 * ```
	 */
	@:native("_NETWORK_SPENT_UPGRADE_SUB")
	static function NetworkSpentUpgradeSub(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_SPENT_UPGRADE_BASE")
	static function NetworkSpentUpgradeBase(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_SPENT_UPGRADE_TRUCK")
	static function NetworkSpentUpgradeTruck(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v1290
	 * ```
	 */
	@:native("_NETWORK_SPENT_UPGRADE_TILTROTOR")
	static function NetworkSpentUpgradeTiltrotor(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic):Dynamic;

	/**
	 * ```
	 * NativeDB Introduced: v2699
	 * ```
	 */
	@:native("_NETWORK_SPENT_VEHICLE_REQUESTED")
	static function NetworkSpentVehicleRequested(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_SPENT_VEHICLE_EXPORT_MODS")
	static function NetworkSpentVehicleExportMods(p0:Dynamic, p1:Dynamic, p2:Dynamic, p3:Dynamic, p4:Dynamic, p5:Dynamic, p6:Dynamic, p7:Dynamic, p8:Dynamic, p9:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_SPENT_WAGER")
	static function NetworkSpentWager(p0:Dynamic, p1:Dynamic, amount:Int):Dynamic;

	/**
	 * 
	 */
	@:native("_NETWORK_SPENT_VIP_UTILITY_CHARGES")
	static function NetworkSpentVipUtilityCharges(p0:Dynamic, p1:Dynamic, p2:Dynamic):Dynamic;

	/**
	 * 
	 */
	@:native("PROCESS_CASH_GIFT")
	static function processCashGift(p0:Dynamic, p1:Dynamic, p2:String):String;

	/**
	 * ```
	 * Does nothing and always returns 0.
	 * ```
	 */
	@:native("WITHDRAW_VC")
	static function withdrawVc(amount:Int):Int;

}
