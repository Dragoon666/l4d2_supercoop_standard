Msg("Initiating Roof Ambience\n");

DirectorOptions <-
{
	AlwaysAllowWanderers = true
	MobSpawnMinTime = 50
	MobSpawnMaxTime = 80
	MobMinSize = 10
	MobMaxSize = 22
	MobMaxPending = 20
	SustainPeakMinTime = 5
	SustainPeakMaxTime = 8
	IntensityRelaxThreshold = 0.85
	RelaxMinInterval = 15
	RelaxMaxInterval = 30
	RelaxMaxFlowTravel = 2000
	SmokerLimit = 1
	HunterLimit = 1
	ChargerLimit = 1
	SpecialRespawnInterval = 30.0
	ZombieSpawnRange = 2000
	NumReservedWanderers = 10
}

Director.ResetMobTimer()