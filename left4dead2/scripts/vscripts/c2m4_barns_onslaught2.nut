Msg("\n\n\n");
Msg(">>>c2m4_barns_onslaught2\n");
Msg("\n\n\n");

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = false
	
	//LockTempo = true
	MobSpawnMinTime = 3
	MobSpawnMaxTime = 7
	MobMinSize = 30
	MobMaxSize = 30
	MobMaxPending = 30
	SustainPeakMinTime = 5
	SustainPeakMaxTime = 10
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 1
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 50
	SpecialRespawnInterval = 1.0
        SmokerLimit = 2
        JockeyLimit = 0
        BoomerLimit = 0
        HunterLimit = 2
        ChargerLimit = 1
	PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
	ZombieSpawnRange = 2000
}

Director.ResetMobTimer()

