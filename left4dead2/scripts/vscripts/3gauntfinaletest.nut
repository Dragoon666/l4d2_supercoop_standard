

//-----------------------------------------------------------------------------

PANIC <- 0
TANK <- 1
DELAY <- 2
ONSLAUGHT <- 3

//-----------------------------------------------------------------------------

SharedOptions <-
{
	A_CustomFinale_StageCount = 1

	A_CustomFinale10 = DELAY
	A_CustomFinaleValue10 = 1
	
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
