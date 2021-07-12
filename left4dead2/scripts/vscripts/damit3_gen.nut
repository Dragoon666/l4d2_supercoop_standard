Msg("Initiating Onslaught\n");

DirectorOptions <-
{
	ProhibitBosses = true
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 1
	AlwaysAllowWanderers = 1
	MobMinSize = 22
	MobMaxSize = 30
	MobMaxPending = 30
	SustainPeakMinTime = 2
	SustainPeakMaxTime = 4
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 1
	RelaxMaxInterval = 3
	RelaxMaxFlowTravel = 50
	MaxSpecials = 3
	SpecialRespawnInterval = 4.0
        SmokerLimit = 0
        JockeyLimit = 1
        BoomerLimit = 0
        HunterLimit = 1
        ChargerLimit = 1
	SpitterLimit = 1
	PreferredMobDirection = SPAWN_LARGE_VOLUME
	PreferredSpecialDirection = SPAWN_LARGE_VOLUME
	ZombieSpawnRange = 1500
}

Director.ResetMobTimer()

