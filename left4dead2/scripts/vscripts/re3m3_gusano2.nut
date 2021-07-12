Msg("Boss Gusano beaten\n");

DirectorOptions <-
{
	ProhibitBosses = true
	AlwaysAllowWanderers = true
	MobSpawnMinTime = 60
	MobSpawnMaxTime = 90
	MobMinSize = 10
	MobMaxSize = 25
	MobMaxPending = 5
	SustainPeakMinTime = 5
	SustainPeakMaxTime = 8
	IntensityRelaxThreshold = 0.9
	RelaxMinInterval = 20
	RelaxMaxInterval = 35
	RelaxMaxFlowTravel = 2000	
	BoomerLimit = 1
	SpitterLimit = 1
	SmokerLimit = 2
	HunterLimit = 2
	ChargerLimit = 3
	SpecialRespawnInterval = 20.0
	ZombieSpawnRange = 2000
	NumReservedWanderers = 15
}

Director.ResetMobTimer()