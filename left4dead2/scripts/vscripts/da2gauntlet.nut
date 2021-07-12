Msg("Detour Ahead Gauntlet\n");

DirectorOptions <-
{
// This turns off tanks and witches.
ProhibitBosses = true

	LockTempo = 0
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 3
	MobMinSize = 5
	MobMaxSize = 30
	MobMaxPending = 30
	SustainPeakMinTime = 5
	SustainPeakMaxTime = 10
	IntensityRelaxThreshold = 0.99
	PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
	RelaxMinInterval = 1
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 100
	SpecialRespawnInterval = 10.0
	ZombieSpawnRange = 1000
	ZombieSpawnInFog = true
	MaxSpecials = 3
	SmokerLimit = 2
}

Director.ResetMobTimer()