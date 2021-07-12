Msg("Initiating Onslaught\n");

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = true

	//PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
	PreferredMobDirection = SPAWN_LARGE_VOLUME
	//PreferredMobDirection = SPAWN_BEHIND_SURVIVORS
	PreferredSpecialDirection = SPAWN_LARGE_VOLUME
	
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 2
	MobMaxPending = 10
	MobMinSize = 10
	MobMaxSize = 20
	
	SustainPeakMinTime = 1
	SustainPeakMaxTime = 3
	
	IntensityRelaxThreshold = 0.90
	
	RelaxMinInterval = 5
	RelaxMaxInterval = 10
	RelaxMaxFlowTravel = 200

}

Director.ResetMobTimer()
Director.PlayMegaMobWarningSounds()
