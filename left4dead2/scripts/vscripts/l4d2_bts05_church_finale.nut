Msg("l4d2_bts05_church_finale-------------------------------------------------------\n");
ERROR <- -1
PANIC <- 0
TANK <- 1
DELAY <- 2
SCRIPTED <- 3

//回到学校
DirectorOptions <-
{
	D_CustomFinale_StageCount = 12

	 D_CustomFinale1 = PANIC
	 D_CustomFinaleValue1 = RandomInt(1,3)

	 D_CustomFinale2 = SCRIPTED
	 D_CustomFinaleValue2 = "off.nut" 
 
	 D_CustomFinale3 = TANK
	 D_CustomFinaleValue3 = RandomInt(2,4)
 
	 D_CustomFinale4 = SCRIPTED
	 D_CustomFinaleValue4 = "l4d2_bts05_church_on.nut" 
 
	 D_CustomFinale5 = PANIC
	 D_CustomFinaleValue5 = RandomInt(1,4)

	 D_CustomFinale6 = SCRIPTED
	 D_CustomFinaleValue6 = "off.nut" 
 
	 D_CustomFinale7 = TANK
	 D_CustomFinaleValue7 = RandomInt(2,6)  
 
	 D_CustomFinale8 = SCRIPTED
	 D_CustomFinaleValue8 = "l4d2_bts05_church_on.nut"

	 D_CustomFinale9 = PANIC
	 D_CustomFinaleValue9 = RandomInt(1,5)

	 D_CustomFinale10 = SCRIPTED
	 D_CustomFinaleValue10 = "off.nut"

	 D_CustomFinale11 = TANK
	 D_CustomFinaleValue11 = RandomInt(2,8)

	 D_CustomFinale12 = SCRIPTED
	 D_CustomFinaleValue12 = "l4d2_bts05_church_on.nut"

	 HordeEscapeCommonLimit = 30
	 ZombieTankHealth = RandomInt(8000,20000)
	 ZombieSpawnRange = 1000
	 CommonLimit = 30
	 MegaMobSize = 90
	 MaxSpecials = 12
	 DominatorLimit = 12
	 TankLimit = 24
	 MobMinSize = 30
	 MobMaxSize = 30
	 MobMaxPending = 30
	 PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
	 PreferredSpecialDirection = SPAWN_LARGE_VOLUME
	 ProhibitBosses = false
	 WitchLimit = 0
	 SpecialRespawnInterval = 7
	 TankHitDamageModifierCoop = RandomFloat(1,5)
	 
	 ShouldAllowSpecialsWithTank = false
	 ShouldAllowMobsWithTank = false
}

function OnBeginCustomFinaleStage( num, type ) // This function is run at the beginning of every stage.
{
      printl( "Beginning custom finale stage " + num + " of type " + type );
      MapScript.DirectorOptions.CommonLimit <- num * 10 // Increase commons by 10 linearly with stages.
}