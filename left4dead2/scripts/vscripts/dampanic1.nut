Msg("Initiating Dam Panic1\n");

DirectorOptions <-
{
	//-----------------------------------------------------
	// This is the variable that you have to set in order
	// to influence the direction of mob spawns.
	//-----------------------------------------------------
	PreferredMobDirection = SPAWN_BEHIND_SURVIVORS

	// Turn always wanderer off
	AlwaysAllowWanderers = 0

	// Set the number of infected that cannot be absorbed
	NumReservedWanderers = 10

	// More generous range for spawning infected makes it more
	// likely that we'll actually get our mob from the back
	ZombieSpawnRange = 3000

	// This turns off tanks and witches.
	ProhibitBosses = true

	MobSpawnMinTime = 8
	MobSpawnMaxTime = 8
	MobMinSize = 20
	MobMaxSize = 35
	SustainPeakMinTime = 1
	SustainPeakMaxTime = 3
	IntensityRelaxThreshold = 0.90
	RelaxMinInterval = 5
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 600
    SpecialRespawnInterval = 5.0
}

Director.ResetMobTimer()
Director.PlayMegaMobWarningSounds()


