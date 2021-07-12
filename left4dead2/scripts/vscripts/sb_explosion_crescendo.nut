Msg("Initiating Onslaught\n");


local SPAWN_IN_FRONT_OF_SURVIVORS = 7

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = true

	PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
	MobSpawnMinTime = 10
	MobSpawnMaxTime = 15
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
