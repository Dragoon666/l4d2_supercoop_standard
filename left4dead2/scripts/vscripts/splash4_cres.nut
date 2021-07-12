Msg("Initiating crescendo\n");

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = true

	MobSpawnMinTime = 4
	MobSpawnMaxTime = 8
	MobMinSize = 10
	MobMaxSize = 20
	MobMaxPending = 70
	SustainPeakMinTime = 5
	SustainPeakMaxTime = 8
	IntensityRelaxThreshold = 0.95
	RelaxMinInterval = 10
	RelaxMaxInterval = 15
	RelaxMaxFlowTravel = 600
	BoomerLimit = 0
	SmokerLimit = 2
	ChargerLimit = 3
	SpecialRespawnInterval = 10.0
	PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
}

Director.PlayMegaMobWarningSounds()
Director.ResetMobTimer()