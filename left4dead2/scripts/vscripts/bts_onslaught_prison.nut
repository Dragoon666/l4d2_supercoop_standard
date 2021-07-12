//Бесконечная волна
Msg("Run vscript: BTS onslaught prison\n");
DirectorOptions <-
{
	PreferredMobDirection = SPAWN_ABOVE_SURVIVORS
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 2
	MobMinSize = 20
	MobMaxSize = 30
	SustainPeakMinTime = 1
	SustainPeakMaxTime = 3
	RelaxMinInterval = 3
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 200
	ZombieSpawnRange = 1000
}
Director.PlayMegaMobWarningSounds()
Director.ResetMobTimer()
