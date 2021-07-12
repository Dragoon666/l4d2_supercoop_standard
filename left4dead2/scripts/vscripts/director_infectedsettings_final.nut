Msg("The Burgerlord has come\n");

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = true

	MobSpawnMinTime = 1
	MobSpawnMaxTime = 1
	MobMinSize = 3
	MobMaxSize = 20
	MobMaxPending = 90
	SustainPeakMinTime = 15
	SustainPeakMaxTime = 18
	IntensityRelaxThreshold = 0.95
	RelaxMinInterval = 5
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 1000
	ZombieTankHealth = 8000
	PreferredMobDirection = SPAWN_ABOVE_SURVIVORS
}


Director.ResetMobTimer()


