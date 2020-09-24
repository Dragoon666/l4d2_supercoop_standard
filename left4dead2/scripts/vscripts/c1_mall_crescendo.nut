Msg("\n\n\n");
Msg(">>>c1_mall_crescendo\n");
Msg("\n\n\n");

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = true

	MobSpawnMinTime = 1
	MobSpawnMaxTime = 1
	MobMinSize = 120
	MobMaxSize = 120
	MobMaxPending = 90
	SustainPeakMinTime = 15
	SustainPeakMaxTime = 18
	IntensityRelaxThreshold = 0.95
	RelaxMinInterval = 5
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 1000
	SmokerLimit = 2
	ChargerLimit = 3
	SpecialRespawnInterval = 3.0
	PreferredMobDirection = SPAWN_ABOVE_SURVIVORS
}


Director.ResetMobTimer()