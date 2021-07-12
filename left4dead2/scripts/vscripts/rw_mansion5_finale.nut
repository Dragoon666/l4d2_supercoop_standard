Msg("rw_mansion5_finale-------------------------------------------------------\n");
ERROR <- -1
PANIC <- 0
TANK <- 1
DELAY <- 2
SCRIPTED <- 3

//超速感染
SharedOptions <-
{
	A_CustomFinale_StageCount = 12

	 A_CustomFinale1 = PANIC
	 A_CustomFinaleValue1 = RandomInt(1,3)

	 A_CustomFinale2 = SCRIPTED
	 A_CustomFinaleValue2 = "off.nut" 
 
	 A_CustomFinale3 = TANK
	 A_CustomFinaleValue3 = RandomInt(2,4)
 
	 A_CustomFinale4 = SCRIPTED
	 A_CustomFinaleValue4 = "rw_mansion5_on.nut" 
 
	 A_CustomFinale5 = PANIC
	 A_CustomFinaleValue5 = RandomInt(1,4)

	 A_CustomFinale6 = SCRIPTED
	 A_CustomFinaleValue6 = "off.nut" 
 
	 A_CustomFinale7 = TANK
	 A_CustomFinaleValue7 = RandomInt(2,6)  
 
	 A_CustomFinale8 = SCRIPTED
	 A_CustomFinaleValue8 = "rw_mansion5_on.nut"

	 A_CustomFinale9 = PANIC
	 A_CustomFinaleValue9 = RandomInt(1,5)

	 A_CustomFinale10 = SCRIPTED
	 A_CustomFinaleValue10 = "off.nut"

	 A_CustomFinale11 = TANK
	 A_CustomFinaleValue11 = RandomInt(2,8)

	 A_CustomFinale12 = SCRIPTED
	 A_CustomFinaleValue12 = "rw_mansion5_on.nut"

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

	ZombieSpawnRange = 2200
} 

Convars.SetValue("l4d2_spawn_uncommons_autochance","3")
Convars.SetValue("l4d2_spawn_uncommons_autotypes","59")
Convars.SetValue("director_relax_min_interval","120")
Convars.SetValue("director_relax_max_interval","120")
Convars.SetValue("tongue_victim_max_speed","700")
Convars.SetValue("tongue_range","2000")

InitialPanicOptions <-
{
	ShouldConstrainLargeVolumeSpawn = true
}


PanicOptions <-
{
	CommonLimit = 30
}


DirectorOptions <- clone SharedOptions
{
}

//-----------------------------------------------------------------------------

function AddTableToTable( dest, src )
{
	foreach( key, val in src )
	{
		dest[key] <- val
	}
}

//-----------------------------------------------------------------------------

function OnBeginCustomFinaleStage( num, type )
{
	if ( developer() > 0 )
	{
		printl("========================================================");
		printl( "Beginning custom finale stage " + num + " of type " + type );
	}

	local waveOptions = null
	if ( num == 1 )
	{
		waveOptions = InitialPanicOptions
	}
	else if ( type == PANIC )
	{
		waveOptions = PanicOptions
		if ( "MegaMobMinSize" in PanicOptions )
		{
			waveOptions.MegaMobSize <- RandomInt( PanicOptions.MegaMobMinSize, MegaMobMaxSize )
		}
	}
	else if ( type == TANK )
	{
		waveOptions = TankOptions
	}
	
	//---------------------------------

	MapScript.DirectorOptions.clear()

	AddTableToTable( MapScript.DirectorOptions, SharedOptions );

	if ( waveOptions != null )
	{
		AddTableToTable( MapScript.DirectorOptions, waveOptions );
	}

	//---------------------------------

	if ( developer() > 0 )
	{
		Msg( "\n*****\nMapScript.DirectorOptions:\n" );
		foreach( key, value in MapScript.DirectorOptions )
		{
			Msg( "    " + key + " = " + value + "\n" );
		}

		if ( LocalScript.rawin( "DirectorOptions" ) )
		{
			Msg( "\n*****\nLocalScript.DirectorOptions:\n" );
			foreach( key, value in LocalScript.DirectorOptions )
			{
				Msg( "    " + key + " = " + value + "\n" );
			}
		}
		printl("========================================================");
	}
}
