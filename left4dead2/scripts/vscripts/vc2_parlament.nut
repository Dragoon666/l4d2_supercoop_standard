Msg("Initiating Onslaught\n");


DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = false

	//PreferredMobDirection = SPAWN_NO_PREFERENCE
	PreferredMobDirection = SPAWN_ABOVE_SURVIVORS
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 1
	MobMaxPending = 20
	MobMinSize = 20
	MobMaxSize = 35
	SustainPeakMinTime = 15
	SustainPeakMaxTime = 20
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 10
	RelaxMaxInterval = 15
	//RelaxMaxFlowTravel = 200
	
	/////////////////////////////////////////////////////
	ZombieSpawnRange = 1000
	SpecialRespawnInterval = 4.0
	BoomerLimit = 2
	SmokerLimit = 2
	HunterLimit = 3
	ChargerLimit = 0
	SpitterLimit = 2
	JockeyLimit = 1
	

}

Director.ResetMobTimer()
Director.PlayMegaMobWarningSounds()