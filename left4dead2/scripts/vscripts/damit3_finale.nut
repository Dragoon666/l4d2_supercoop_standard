

//-----------------------------------------------------------------------------

PANIC <- 0
TANK <- 1
DELAY <- 2
ONSLAUGHT <- 3

//-----------------------------------------------------------------------------

SharedOptions <-
{
	A_CustomFinale_StageCount = 3
	
 	A_CustomFinale1 = PANIC
	A_CustomFinaleValue1 = 1

	A_CustomFinale2 = TANK
	A_CustomFinaleValue2 = 1

	A_CustomFinale3 = PANIC
	A_CustomFinaleValue3 = 1

	PreferredMobDirection = SPAWN_ANYWHERE
	PreferredSpecialDirection = SPAWN_ANYWHERE
	MaxSpecials = 3
	ShouldConstrainLargeVolumeSpawn = false
	ZombieSpawnRange = 1000
	SpecialRespawnInterval = 15
} 

InitialPanicOptions <-
{
	ShouldConstrainLargeVolumeSpawn = true
	PreferredMobDirection = SPAWN_ANYWHERE
	PreferredSpecialDirection = SPAWN_ANYWHERE
	MaxSpecials = 3
	ZombieSpawnRange = 1000
}


PanicOptions <-
{
	ShouldConstrainLargeVolumeSpawn = true
	CommonLimit = 30
	MaxSpecials = 3
	PreferredMobDirection = SPAWN_ANYWHERE
	PreferredSpecialDirection = SPAWN_ANYWHERE
	ZombieSpawnRange = 1000
}

TankOptions <-
{
	ShouldAllowSpecialsWithTank = true
	MaxSpecials = 2
	SpecialRespawnInterval = 20
	PreferredMobDirection = SPAWN_ANYWHERE
	PreferredSpecialDirection = SPAWN_ANYWHERE
	ZombieSpawnRange = 1000
	
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

function OnBeginCustomFinaleStage( num, type )
{
	if (num == 1) {
		EntFire( "nut_relay", "Trigger", 0 );
    	}

}