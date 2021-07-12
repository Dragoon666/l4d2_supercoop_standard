Msg("Randomizing Power\n");

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = true

	MobSpawnMinTime = 5
	MobSpawnMaxTime = 15
	MobMaxPending = 20
	MobMinSize = 12
	MobMaxSize = 25
	SustainPeakMinTime = 25
	SustainPeakMaxTime = 35
	IntensityRelaxThreshold = 0.90
	RelaxMinInterval = 20
	RelaxMaxInterval = 25
	RelaxMaxFlowTravel = 300
	ShouldConstrainLargeVolumeSpawn = true
	PreferredMobDirection = SPAWN_LARGE_VOLUME
	PreferredSpecialDirection = SPAWN_LARGE_VOLUME
	SpecialRespawnInterval = 15
	ZombieSpawnRange = 1500
	CommonLimit = 25
}