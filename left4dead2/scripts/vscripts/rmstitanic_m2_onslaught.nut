Msg("Initiating Onslaught\n");

DirectorOptions <-
{
	ProhibitBosses = true
	LockTempo = true
	MobSpawnMinTime = 6
	MobSpawnMaxTime = 10
	MobMaxPending = 20
	MobMinSize = 15
	MobMaxSize = 20
	SustainPeakMinTime = 1
	SustainPeakMaxTime = 3
	IntensityRelaxThreshold = 0.95
	RelaxMinInterval = 5
	RelaxMaxInterval = 10
	RelaxMaxFlowTravel = 200
	PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
	ZombieSpawnRange = 2000
	MaxSpecials = 1
	CommonLimit = 30
}

Director.ResetMobTimer()
Director.PlayMegaMobWarningSounds()