Msg("Initiating Onslaught\n");

DirectorOptions <-
{
	ProhibitBosses = true
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 3
	AlwaysAllowWanderers = 0
	CommonLimit = 30
	MobMinSize = 20
	MobMaxSize = 25
	MobMaxPending = 25
	SustainPeakMinTime = 2
	SustainPeakMaxTime = 5
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 2
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 50
	MaxSpecials = 2
	SpecialRespawnInterval = 10.0
        SmokerLimit = 0
        JockeyLimit = 1
        BoomerLimit = 1
        HunterLimit = 1
        ChargerLimit = 1
	SpitterLimit = 1
	PreferredMobDirection = SPAWN_LARGE_VOLUME
	PreferredSpecialDirection = SPAWN_LARGE_VOLUME
	ZombieSpawnRange = 2000
}

Director.ResetMobTimer()
Director.PlayMegaMobWarningSounds()

