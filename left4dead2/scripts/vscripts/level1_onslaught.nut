Msg("Initiating Onslaught\n");

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = false

	MobSpawnMinTime = 3
	MobSpawnMaxTime = 8
	MobMinSize = 25
	MobMaxSize = 35
	MobMaxPending = 30
	SustainPeakMinTime = 1
	SustainPeakMaxTime = 3
	IntensityRelaxThreshold = 0.90
	RelaxMinInterval = 3
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 600
	//Special infected options
	SpecialRespawnInterval = 0.8
}

Director.ResetMobTimer()
Director.PlayMegaMobWarningSounds()	
}

Director.ResetMobTimer()


