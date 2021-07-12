Msg("Initiating forklift crescendo\n");
//-----------------------------------------------------
DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = true
        LockTempo = 0
	MobSpawnMinTime = 10
	MobSpawnMaxTime = 15
	MobMinSize = 19
	MobMaxSize = 27
	MobRechargeRate  = 3
	SustainPeakMinTime = 1
	SustainPeakMaxTime = 2
	IntensityRelaxThreshold = 0.01
	RelaxMinInterval = 1
	RelaxMaxInterval = 1
	RelaxMaxFlowTravel = -1000
	MobMaxPending = 30
	SpecialRespawnInterval = 20.0
	SpitterLimit = 2
	PreferredMobDirection = SPAWN_ANYWHERE
	PreferredSpecialDirection = SPAWN_BEHIND_SURVIVORS
	CommonLimit = 30
	ZombieSpawnRange = 2000
}

Director.ResetMobTimer()
Director.PlayMegaMobWarningSounds()