Msg("Initiating Onslaught\n");

DirectorOptions <-
{
	ProhibitBosses = true
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 1
	AlwaysAllowWanderers = 1
	MobMinSize = 20
	MobMaxSize = 25
	MobMaxPending = 25
	SustainPeakMinTime = 1
	SustainPeakMaxTime = 1
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 1
	RelaxMaxInterval = 3
	RelaxMaxFlowTravel = 1
	MaxSpecials = 2
	SpecialRespawnInterval = 5.0
        SmokerLimit = 0
        JockeyLimit = 1
        BoomerLimit = 0
        HunterLimit = 1
        ChargerLimit = 1
	SpitterLimit = 1
	PreferredMobDirection = SPAWN_ANYWHERE
	ZombieSpawnRange = 2000
}

Director.ResetMobTimer()

