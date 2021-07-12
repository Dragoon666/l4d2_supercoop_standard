Msg("Boss Fabrica\n");

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
	TankLimit = 1	
	WitchLimit = 0	
	BoomerLimit = 0
	SpitterLimit = 0
	SmokerLimit = 0
	HunterLimit = 0
	JockeyLimit = 0
	ChargerLimit = 0
	CommonLimit = 0
	SpecialRespawnInterval = 20.0
	ZombieSpawnRange = 999999
}

Director.ResetMobTimer()