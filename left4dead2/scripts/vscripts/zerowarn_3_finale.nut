//-----------------------------------------------------------------------------
// Enumerations of stage types

PANIC <- 0
TANK <- 1
DELAY <- 2
ONSLAUGHT <- 3

Msg("Go Forth, Quake! Burn Them To Ashes!\n");

DirectorOptions <-
{
	A_CustomFinale_StageCount = 7 //Number of stages. Used by director VS scoring, as well??
	
 	A_CustomFinale1 = PANIC
	A_CustomFinaleValue1 = 3 //3 PANIC waves
	
 	A_CustomFinale2 = TANK
	A_CustomFinaleValue2 = 1

	A_CustomFinale3 = PANIC
	A_CustomFinaleValue3 = 2 //2 PANIC waves

	A_CustomFinale4 = TANK
	A_CustomFinaleValue4 = 2 //2 TANKS

	A_CustomFinale5 = DELAY
	A_CustomFinaleValue5 = 15//15 seconds of DELAY

	A_CustomFinale6 = PANIC
	A_CustomFinaleValue6 = 2
	
	A_CustomFinale7 = TANK
	A_CustomFinaleValue7 = 3
	
    // Additional Director options
	PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
	PreferredSpecialDirection = SPAWN_IN_FRONT_OF_SURVIVORS
	//ShouldConstrainLargeVolumeSpawn = true
	ZombieSpawnRange = 1000
    TankLimit = 3
	WitchLimit = 1
	CommonLimit = 25
	Maxspecials = 4
	HordeEscapeCommonLimit = 30	
	EscapeSpawnTanks = true
	ZombieSpawnInFog = true
	//ShouldConstrainLargeVolumeSpawn = true
	ShouldAllowSpecialsWithTank = true
	SpecialRespawnInterval = 10
	ZombieTankHealth = 4500
} 

// ---->
// ---->
//Section that counts stages and fires any IO that needs to be fired depending on the stage number. currently using it for radio time messages but can be used for anything
// ---->
// ---->

FiveMinutesOut <- 4 // here (and the 2 below) you would set a value for which stage(s) you want IO to fire
ThreeMinutesOut <- 5
OneMinuteOut <- 7
ReadyToFire <- 0 // do not change
HowManyStages <- 7 //how many stages total


function OnBeginCustomFinaleStage( num, type )
{
      printl( "Beginning custom event stage " + num + " of type " + type );
      ReadyToFire = num

//5 minutes out section
if ( ReadyToFire == FiveMinutesOut )
    {
        Msg("5 minutes to go\n")
        EntFire( "5minsout", "PlaySound", "0", 0 )
		
    }

//3 minutes out section
if ( ReadyToFire == ThreeMinutesOut )
    {
        Msg("3 minutes to go\n")
        EntFire( "3minsout", "PlaySound", "0", 0 )
		
    }
	
//1 minute out section
if ( ReadyToFire == OneMinuteOut )
    {
        Msg("1 minute to go\n")
        EntFire( "1minsout", "PlaySound", "0", 0 )
		
    }

}

