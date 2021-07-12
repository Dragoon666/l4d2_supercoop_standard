Msg("Ihm - finale\n");

//-----------------------------------------------------------------------------

PANIC <- 0
TANK <- 1
DELAY <- 2

//-----------------------------------------------------------------------------

SharedOptions <-
{
	A_CustomFinale_StageCount = 9
	
 	A_CustomFinale1 = PANIC
	A_CustomFinaleValue1 = 1
	
 	A_CustomFinale2 = PANIC
	A_CustomFinaleValue2 = 1

	A_CustomFinale3 = DELAY
	A_CustomFinaleValue3 = 10

	A_CustomFinale4 = TANK
	A_CustomFinaleValue4 = 2
	//A_CustomFinaleMusic4 = ""

	A_CustomFinale5 = DELAY
	A_CustomFinaleValue5 = 12

	A_CustomFinale6 = PANIC
	A_CustomFinaleValue6 = 2

	A_CustomFinale7 = DELAY
	A_CustomFinaleValue7 = 12

	A_CustomFinale8 = TANK
	A_CustomFinaleValue8 = 2
	//A_CustomFinaleMusic8 = ""

	A_CustomFinale9 = DELAY
	A_CustomFinaleValue9 = 7
	
	PreferredMobDirection = SPAWN_LARGE_VOLUME
	PreferredSpecialDirection = SPAWN_LARGE_VOLUME
	ShouldConstrainLargeVolumeSpawn = false
	TankLimit = 3

	ZombieSpawnRange = 3000
	
	SpecialRespawnInterval = 20
} 

InitialPanicOptions <-
{
	ShouldConstrainLargeVolumeSpawn = true
}

PanicOptions <-
{
	CommonLimit = 30
	SpecialRespawnInterval = 20
}

TankOptions <-
{
	ShouldAllowSpecialsWithTank = true
	SpecialRespawnInterval = 30
	TankLimit = 3
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

}


