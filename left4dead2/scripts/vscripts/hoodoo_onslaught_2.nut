Msg("Initiating hoodoo_onslaught_22\n");

DirectorOptions <-
{
	// This turns off tanks and witches.
	//ProhibitBosses = true

MaxSpecials = 4
SpecialRespawnInterval = 8
ChargerLimit = 1
HunterLimit = 2
JockeyLimit = 1


	MobSpawnMinTime = 4
	MobSpawnMaxTime = 8
	MobMinSize = 6
	MobMaxSize = 22
	SustainPeakMinTime = 1
	SustainPeakMaxTime = 3
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 2
	RelaxMaxInterval = 6
	MobMaxPending = 30
	RelaxMaxFlowTravel = 160
	ZombieSpawnRange = 2000
        PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
}

Director.ResetMobTimer()

