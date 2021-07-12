//-----------------------------------------------------
//
// wanli script more infected people.
//
//-----------------------------------------------------

GreatWallCommonLimit <- 45
GreatWallMegaMobSize <- 55

if ( Director.IsPlayingOnConsole() )
{
	GreatWallCommonLimit <- 35
}

if ( Director.GetGameMode() == "versus" )
{
	GreatWallCommonLimit <- 25
	GreatWallMegaMobSize <- 40

}

DirectorOptions <-
{
	//-----------------------------------------------------
	// This is the variable that you have to set in order
	// to influence the direction of mob spawns.
	//-----------------------------------------------------
	PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS

	// Turn always wanderer on
	AlwaysAllowWanderers = true

	// Let dudes come out of the fog
	ZombieSpawnInFog = true

	// Set the number of infected that cannot be absorbed
	NumReservedWanderers = 4

	// More generous range for spawning infected makes it more
	// likely that we'll actually get our mob from the front
	ZombieSpawnRange = 3000

	//Free horde
	CommonLimit = GreatWallCommonLimit	
	MegaMobSize = GreatWallMegaMobSize
}

