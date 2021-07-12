Msg("Initiating redemption red2f Onslaught\n");

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = true
	
	//LockTempo = true
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 3
	MobMinSize = 20
	MobMaxSize = 35
	MobMaxPending = 35
	SustainPeakMinTime = 7
	SustainPeakMaxTime = 15
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 1
	RelaxMaxInterval = 3
        RelaxMaxFlowTravel = 250
	SpecialRespawnInterval = 2.0
        SmokerLimit = 2
        JockeyLimit = 0
        BoomerLimit = 0
        HunterLimit = 2
        ChargerLimit = 1
	PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
	ZombieSpawnRange = 1200
}

Director.ResetMobTimer()
Director.PlayMegaMobWarningSounds()

