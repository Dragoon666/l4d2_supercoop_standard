Msg("Run vscript: BTS 2m shop\n");
DirectorOptions <-
{
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 2
	MobMaxPending = 90
	MobMinSize = 20
	MobMaxSize = 30
	SustainPeakMinTime = 1
	SustainPeakMaxTime = 3
	RelaxMinInterval = 3
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 200
	ZombieSpawnRange = 700
}
Director.PlayMegaMobWarningSounds()
Director.ResetMobTimer()
