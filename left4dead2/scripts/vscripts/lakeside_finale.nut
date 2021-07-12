Msg("IHateMountains - finale\n");

//-----------------------------------------------------------------------------

PANIC <- 0
TANK <- 1
DELAY <- 2

//-----------------------------------------------------------------------------

SharedOptions <-
{
	A_CustomFinale_StageCount = 8
	 
	A_CustomFinale1 		= PANIC
	A_CustomFinaleValue1 	= 2	
	
	A_CustomFinale2 		= DELAY
	A_CustomFinaleValue2 	= 12
	
	A_CustomFinale3 		= TANK
	A_CustomFinaleValue3 	= 2
	A_CustomFinaleMusic3 = "Event.Tank"
	
	A_CustomFinale4 		= DELAY
	A_CustomFinaleValue4 	= 12
		
	A_CustomFinale5 		= PANIC
	A_CustomFinaleValue5 	= 2	
	
	A_CustomFinale6 		= DELAY
	A_CustomFinaleValue6 	= 12
	
	A_CustomFinale7 		= TANK
	A_CustomFinaleValue7 	= 2
	A_CustomFinaleMusic7 = "Event.Tank"
	
	A_CustomFinale8 		= DELAY
	A_CustomFinaleValue8 	= 8
	 

	ZombieSpawnRange = 2000
	
	
	
	
	
	ZombieSpawnInFog = true
	
	SpecialRespawnInterval = 20
} 

InitialPanicOptions <-
{
	ShouldConstrainLargeVolumeSpawn = false
}

PanicOptions <-
{
	CommonLimit = 30
	SpecialRespawnInterval = 20
}

TankOptions <-
{
	ShouldAllowSpecialsWithTank = true
	SpecialRespawnInterval = 20
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
