Msg("l4c_shrine_finale-------------------------------------------------------\n");
ERROR <- -1
PANIC <- 0
TANK <- 1
DELAY <- 2
SCRIPTED <- 3

//留在中国
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
	 D_CustomFinaleValue4 = "l4c_shrine_on.nut" 
 
	 D_CustomFinale5 = PANIC
	 D_CustomFinaleValue5 = RandomInt(1,4)

	 D_CustomFinale6 = SCRIPTED
	 D_CustomFinaleValue6 = "off.nut" 
 
	 D_CustomFinale7 = TANK
	 D_CustomFinaleValue7 = RandomInt(2,6)  
 
	 D_CustomFinale8 = SCRIPTED
	 D_CustomFinaleValue8 = "l4c_shrine_on.nut"

	 D_CustomFinale9 = PANIC
	 D_CustomFinaleValue9 = RandomInt(1,5)

	 D_CustomFinale10 = SCRIPTED
	 D_CustomFinaleValue10 = "off.nut"

	 D_CustomFinale11 = TANK
	 D_CustomFinaleValue11 = RandomInt(2,8)

	 D_CustomFinale12 = SCRIPTED
	 D_CustomFinaleValue12 = "l4c_shrine_on.nut"

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