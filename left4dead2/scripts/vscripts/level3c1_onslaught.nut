Msg("Initiating Onslaught\n");

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = false

	MobSpawnMinTime = 3
	MobSpawnMaxTime = 8
	MobMinSize = 30
	MobMaxSize = 30
	MobMaxPending = 30
	SustainPeakMinTime = 3
	SustainPeakMaxTime = 7
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 1
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 600
	//Special infected options
	SpecialRespawnInterval = 0.8
        SpitterLimit = 1
		SmokerLimit = 1
        JockeyLimit = 1
        BoomerLimit = 1
        HunterLimit = 1
        ChargerLimit = 1
}

Director.ResetMobTimer()
Director.PlayMegaMobWarningSounds()	
