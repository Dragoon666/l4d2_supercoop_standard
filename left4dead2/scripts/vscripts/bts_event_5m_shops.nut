Msg("Run vscript: BTS 5m shops\n");
DirectorOptions <-
{
	TankLimit = 0
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 2
	MobMinSize = 20
	MobMaxSize = 30
	SustainPeakMinTime = 1
	SustainPeakMaxTime = 3
	RelaxMinInterval = 3
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 200
	PreferredMobDirection = SPAWN_ABOVE_SURVIVORS
	ZombieSpawnRange = 1500
}
Director.PlayMegaMobWarningSounds()
Director.ResetMobTimer()
