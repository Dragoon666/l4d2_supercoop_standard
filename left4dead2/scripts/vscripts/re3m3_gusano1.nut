Msg("Boss Gusano\n");

DirectorOptions <-
{
	ProhibitBosses = true
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
	BoomerLimit = 0
	SpitterLimit = 0
	SmokerLimit = 0
	TankLimit = 2
	HunterLimit = 2
	ChargerLimit = 3
	CommonLimit = 0
	SpecialRespawnInterval = 20.0
	ZombieSpawnRange = 2000
}

Director.ResetMobTimer()