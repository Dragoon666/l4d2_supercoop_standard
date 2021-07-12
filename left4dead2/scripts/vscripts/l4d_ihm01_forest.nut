Msg("IHM - map1Forest\n");

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = false
	
	AlwaysAllowWanderers = true
	MobSpawnMinTime = 50
	MobSpawnMaxTime = 100
	//MobMinSize = 5
	MobMinSize = 20
	MobMaxSize = 25
	MobMaxPending = 30
	SustainPeakMinTime = 5
	SustainPeakMaxTime = 8
	//IntensityRelaxThreshold = 0.6
	IntensityRelaxThreshold = 0.95
	RelaxMinInterval = 25
	RelaxMaxInterval = 30
	RelaxMaxFlowTravel = 850
	//SpecialRespawnInterval = 30.0
	SpecialRespawnInterval = 15.0
	NumReservedWanderers = 10
	ZombieSpawnInFog = true
}

Director.ResetMobTimer()