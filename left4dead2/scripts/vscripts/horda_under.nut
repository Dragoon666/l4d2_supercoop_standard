Msg("Initiating crescendo\n");

DirectorOptions <-
{
	ProhibitBosses = true
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 5
	MobMinSize = 120
	MobMaxSize = 120
	MobMaxPending = 90
	SustainPeakMinTime = 15
	SustainPeakMaxTime = 18
	IntensityRelaxThreshold = 0.95
	RelaxMinInterval = 5
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 1000
	SmokerLimit = 2
	ChargerLimit = 1
	SpecialRespawnInterval = 5.0
}


Director.ResetMobTimer()