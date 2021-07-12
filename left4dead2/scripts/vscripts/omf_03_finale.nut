Msg("omf_03_finale-------------------------------------------------------\n");
ERROR <- -1
PANIC <- 0
TANK <- 1
DELAY <- 2
SCRIPTED <- 3

//我们共同的恶魔
DirectorOptions <-
{
	D_CustomFinale_StageCount = 12

	 D_CustomFinale1 = PANIC
	 D_CustomFinaleValue1 = 1

	 D_CustomFinale2 = SCRIPTED
	 D_CustomFinaleValue2 = "off.nut" 
 
	 D_CustomFinale3 = TANK
	 D_CustomFinaleValue3 = 1
 
	 D_CustomFinale4 = SCRIPTED
	 D_CustomFinaleValue4 = "omf_03_on.nut" 
 
	 D_CustomFinale5 = PANIC
	 D_CustomFinaleValue5 = 1

	 D_CustomFinale6 = SCRIPTED
	 D_CustomFinaleValue6 = "off.nut" 
 
	 D_CustomFinale7 = TANK
	 D_CustomFinaleValue7 = 1
 
	 D_CustomFinale8 = SCRIPTED
	 D_CustomFinaleValue8 = "omf_03_on.nut"

	 D_CustomFinale9 = PANIC
	 D_CustomFinaleValue9 = 1

	 D_CustomFinale10 = SCRIPTED
	 D_CustomFinaleValue10 = "off.nut"

	 D_CustomFinale11 = TANK
	 D_CustomFinaleValue11 = 1

	 D_CustomFinale12 = SCRIPTED
	 D_CustomFinaleValue12 = "omf_03_on.nut"

	 HordeEscapeCommonLimit = 30
	 ZombieTankHealth = RandomInt(8000,20000)
	 CommonLimit = 30
	 MegaMobSize = 90
	 MaxSpecials = 12
	 DominatorLimit = 12
	 TankLimit = 24
	 PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
	 PreferredSpecialDirection = SPAWN_LARGE_VOLUME
	 ProhibitBosses = false
	 WitchLimit = 0
	 SpecialRespawnInterval = 7
	 TankHitDamageModifierCoop = RandomFloat(1,5)
	 
	 ShouldAllowSpecialsWithTank = false
	 ShouldAllowMobsWithTank = false
}

Convars.SetValue("l4d2_spawn_uncommons_autochance","3")
Convars.SetValue("l4d2_spawn_uncommons_autotypes","59")
Convars.SetValue("director_relax_min_interval","120")
Convars.SetValue("director_relax_max_interval","120")
Convars.SetValue("tongue_victim_max_speed","700")
Convars.SetValue("tongue_range","2000")