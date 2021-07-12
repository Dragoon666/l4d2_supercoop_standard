Msg("Initiating Onslaught\n");

DirectorOptions <-
{

	ProhibitBosses = true

	MobSpawnMinTime = 2
	MobSpawnMaxTime = 3
	MobMinSize = 13
	MobMaxSize = 15
	MobMaxPending = 15

	AlwaysAllowWanderers = 0

	SustainPeakMinTime = 1
	SustainPeakMaxTime = 1
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 1
	RelaxMaxInterval = 2
	RelaxMaxFlowTravel = 1
	PreferredMobDirection = SPAWN_ABOVE_SURVIVORS
	ZombieSpawnRange = 1500

	MaxSpecials = 1
	SpecialRespawnInterval = 30.0
        SmokerLimit = 0
        JockeyLimit = 0
        BoomerLimit = 1
        HunterLimit = 0
        ChargerLimit = 0
	SpitterLimit = 1
}

Director.ResetMobTimer()
Director.PlayMegaMobWarningSounds()

