Msg("M2 Flood Gate crescendo initiated.\n");

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = true

	MobSpawnMinTime = 4
	MobSpawnMaxTime = 6
	MobMaxPending = 20
	MobMinSize = 18
	MobMaxSize = 25
	SustainPeakMinTime = 14
	SustainPeakMaxTime = 20
	IntensityRelaxThreshold = 1.00
	RelaxMinInterval = 2
	RelaxMaxInterval = 6
	RelaxMaxFlowTravel = 200
	
	CommonLimit = 35
	
	PreferredMobDirection = SPAWN_LARGE_VOLUME
	PreferredSpecialDirection = SPAWN_LARGE_VOLUME
	ShouldConstrainLargeVolumeSpawn = false
	
	ZombieSpawnRange = 1400
}

Director.ResetMobTimer()