Msg("\n\n\n>>>>>>>>>>>>>>>>>>>>>>>>>>>Load c11 finale scripts<<<<<<<<<<<<<<<<<<<<<<<<<<<<\n")
ERROR <- -1
PANIC <- 0
TANK <- 1
DELAY <- 2
SCRIPTED <- 3

DirectorOptions <-
{
	 A_CustomFinale1 = PANIC
	 A_CustomFinaleValue1 = RandomInt(1,2)

	 A_CustomFinale2 = SCRIPTED
	 A_CustomFinaleValue2 = "off.nut" 
 
	 A_CustomFinale3 = TANK
	 A_CustomFinaleValue3 = RandomInt(2,3)
 
	 A_CustomFinale4 = SCRIPTED
	 A_CustomFinaleValue4 = "c11m5_on.nut" 
 
	 A_CustomFinale5 = PANIC
	 A_CustomFinaleValue5 = RandomInt(1,3)

	 A_CustomFinale6 = SCRIPTED
	 A_CustomFinaleValue6 = "off.nut" 
 
	 A_CustomFinale7 = TANK
	 A_CustomFinaleValue7 = RandomInt(2,6)  
 
	 A_CustomFinale8 = SCRIPTED
	 A_CustomFinaleValue8 = "c11m5_on.nut"

	 A_CustomFinale9 = PANIC
	 A_CustomFinaleValue9 = RandomInt(1,3)

	 A_CustomFinale10 = SCRIPTED
	 A_CustomFinaleValue10 = "off.nut"

	 A_CustomFinale11 = TANK
	 A_CustomFinaleValue11 = RandomInt(6,10)
	 
	 A_CustomFinale12 = SCRIPTED
	 A_CustomFinaleValue12 = "c11m5_on.nut"	 	 

	 HordeEscapeCommonLimit = 30
	 ZombieTankHealth = RandomInt(8000,20000)
	 CommonLimit = 30
	 MegaMobSize = 90
	 cm_MaxSpecials = 12
	 DominatorLimit = 8
	 TankLimit = 24
	 PreferredMobDirection = SPAWN_LARGE_VOLUME
	 PreferredSpecialDirection = SPAWN_LARGE_VOLUME
	 ProhibitBosses = false
	 WitchLimit = 0
	 SpecialRespawnInterval = 12
	 TankHitDamageModifierCoop = RandomFloat(1,5)
}
Convars.SetValue("l4d2_spawn_uncommons_autochance","3")
Convars.SetValue("l4d2_spawn_uncommons_autotypes","59")
Convars.SetValue("director_relax_min_interval","120")
Convars.SetValue("director_relax_max_interval","120")
Convars.SetValue("tongue_victim_max_speed","700")
Convars.SetValue("tongue_range","2000")

function OnBeginCustomFinaleStage( num, type )
{
	local dopts=GetDirectorOptions();
	if(type == TANK)
	{
		dopts.KillAllSpecialInfected()
	}
}