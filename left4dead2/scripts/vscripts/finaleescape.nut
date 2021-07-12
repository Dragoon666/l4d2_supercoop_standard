Msg("Initiating Finale Escape\n");

DirectorOptions <-
{
	//-----------------------------------------------------
	// This is the variable that you have to set in order
	// to influence the direction of mob spawns.
	//-----------------------------------------------------
	PreferredMobDirection = SPAWN_ABOVE_SURVIVORS
        PreferredSpecialDirection = SPAWN_SPECIALS_IN_FRONT_OF_SURVIVORS

	// Turn always wanderer off
	AlwaysAllowWanderers = 0

	// Set the number of infected that cannot be absorbed
	NumReservedWanderers = 10

	MobSpawnMinTime = 8
	MobSpawnMaxTime = 8
	MobMinSize = 25
	MobMaxSize = 30
	SustainPeakMinTime = 1
	SustainPeakMaxTime = 3
	IntensityRelaxThreshold = 0.90
	RelaxMinInterval = 5
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 600
    SpecialRespawnInterval = 5.0
}



