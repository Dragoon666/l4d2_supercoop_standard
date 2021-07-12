Msg("uf4_airfield_finale-------------------------------------------------------\n");

//
PANIC <- 0
TANK <- 1
DELAY <- 2
ONSLAUGHT <- 3

DirectorOptions <-
{
	//-----------------------------------------------------

	A_CustomFinale_StageCount = 13

	A_CustomFinale1 = ONSLAUGHT
	A_CustomFinaleValue1 = "uf4_airfield_stage1"		// Getting cans

	A_CustomFinale2 = PANIC
	A_CustomFinaleValue2 = RandomInt(1,3)

	A_CustomFinale3 = ONSLAUGHT
	A_CustomFinaleValue3 = "off" 

	A_CustomFinale4 = TANK
	A_CustomFinaleValue4 = RandomInt(2,4)

	A_CustomFinale5 = ONSLAUGHT
	A_CustomFinaleValue5 = "uf4_airfield_stage2"		// Turn the power back on

	A_CustomFinale6 = PANIC
	A_CustomFinaleValue6 = RandomInt(1,4)
	
	A_CustomFinale7 = ONSLAUGHT
	A_CustomFinaleValue7 = "off" 

	A_CustomFinale8 = TANK
	A_CustomFinaleValue8 = RandomInt(2,6)  

	A_CustomFinale9 = SCRIPTED
	A_CustomFinaleValue9 = "uf4_airfield"

	A_CustomFinale10 = PANIC
	A_CustomFinaleValue10 = RandomInt(1,5)

	A_CustomFinale11 = SCRIPTED
	A_CustomFinaleValue11 = "off.nut"

	A_CustomFinale12 = TANK
	A_CustomFinaleValue12 = RandomInt(2,8)

	A_CustomFinale13 = SCRIPTED
	A_CustomFinaleValue13 = "uf4_airfield"

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
	ZombieSpawnRange = 1000
}

InitialOnslaughtOptions <-
{
}

PanicOptions <-
{
}

TankOptions <-
{
}

//-----------------------------------------------------

function CanPoured(){}	// Declared in stage1

// Print stage number and increase commons linearly by 15
function OnBeginCustomFinaleStage( num, type )
{
	Msg( "Beginning custom finale stage " + num + " of type " + type + "\n");
	//DirectorOptions.CommonLimit <- 15 * num

	if (num == 7) {
		Msg("Signaling hanger door switch\n") 
		EntFire("hanger_return_relay", "trigger");
	}

	if (num == 8) {
		Msg("Signaling finale done\n") 
		EntFire("finale_done_relay", "trigger");
	}
}

Convars.SetValue("l4d2_spawn_uncommons_autochance","3")
Convars.SetValue("l4d2_spawn_uncommons_autotypes","59")
Convars.SetValue("director_relax_min_interval","120")
Convars.SetValue("director_relax_max_interval","120")
Convars.SetValue("tongue_victim_max_speed","700")
Convars.SetValue("tongue_range","2000")