Msg("Initiating Onslaught\n");

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = false
	
	//LockTempo = true
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 1
	MobMinSize = 40
	MobMaxSize = 40
	MobMaxPending = 1000
	SustainPeakMinTime = 1
	SustainPeakMaxTime = 1
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 1
	RelaxMaxInterval = 1
	RelaxMaxFlowTravel = 1
	SpecialRespawnInterval = 1.0
        SmokerLimit = 1
        JockeyLimit = 2
        BoomerLimit = 4
        HunterLimit = 2
        ChargerLimit = 4
	SpecialRespawnInterval = 1.0
	PreferredMobDirection = SPAWN_ANYWHERE
	ZombieSpawnRange = 2000
}

Director.PlayMegaMobWarningSounds()
Director.ResetMobTimer()



