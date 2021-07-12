

//-----------------------------------------------------------------------------

PANIC <- 0
TANK <- 1
DELAY <- 2
ONSLAUGHT <- 3

//-----------------------------------------------------------------------------

SharedOptions <-
{
	A_CustomFinale_StageCount = 10
	
 	A_CustomFinale1 = PANIC
	A_CustomFinaleValue1 = 1
	
 	A_CustomFinale2 = PANIC
	A_CustomFinaleValue2 = 1

 	A_CustomFinale3 = PANIC
	A_CustomFinaleValue3 = 1

	A_CustomFinale4 = DELAY
	A_CustomFinaleValue4 = 10

	A_CustomFinale5 = TANK
	A_CustomFinaleValue5 = 1

	A_CustomFinale6 = DELAY
	A_CustomFinaleValue6 = 15

	A_CustomFinale7 = PANIC
	A_CustomFinaleValue7 = 2

	A_CustomFinale8 = DELAY
	A_CustomFinaleValue8 = 10

	A_CustomFinale9 = TANK
	A_CustomFinaleValue9 = 1

	A_CustomFinale10 = DELAY
	A_CustomFinaleValue10 = 12
	
	PreferredMobDirection = SPAWN_LARGE_VOLUME
	PreferredSpecialDirection = SPAWN_LARGE_VOLUME
	ShouldConstrainLargeVolumeSpawn = true

	ZombieSpawnRange = 6000
	



} 

InitialPanicOptions <-
{
	ShouldConstrainLargeVolumeSpawn = true
}


PanicOptions <-
{
	CommonLimit = 80
        MobMaxSize = 50
}

TankOptions <-
{
	ShouldAllowSpecialsWithTank = true
	SpecialRespawnInterval = 30
}


DirectorOptions <- clone SharedOptions
{
if ( Director.GetGameMode() == "coop" )
{
	SpecialRespawnInterval <- 15
	HordeEscapeCommonLimit <- 120
}
else if ( Director.GetGameMode() == "versus" )
{
	SpecialRespawnInterval <- 20
	HordeEscapeCommonLimit <- 95
}
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
      printl( "Beginning custom finale stage " + num + " of type " + type );

}
