Msg("Initiating Onslaught 2\n");

DirectorOptions <-
{
// This turns off tanks and witches.
ProhibitBosses = false

	//LockTempo = true
	MobSpawnMinTime = 3
	MobSpawnMaxTime = 5
	MobMinSize = 30
	MobMaxSize = 30
	MobMaxPending = 30
	SustainPeakMinTime = 5
	SustainPeakMaxTime = 10
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 1
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 50
        SmokerLimit = 0
        JockeyLimit = 0
        BoomerLimit = 0
        HunterLimit = 2
        ChargerLimit = 1
	PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
	ZombieSpawnRange = 3500
}

Director.ResetMobTimer()