//Бесконечная волна
Msg("Run vscript: BTS onslaught\n");
DirectorOptions <-
{
	TankLimit = 0
	ProhibitBosses = true
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 2
	MobMaxPending = 90
	MobMinSize = 20
	MobMaxSize = 30
	SustainPeakMinTime = 1
	SustainPeakMaxTime = 3
	IntensityRelaxThreshold = 0.90
	RelaxMinInterval = 3
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 1000
	ZombieSpawnRange = 1000
}
Director.PlayMegaMobWarningSounds()
Director.ResetMobTimer()
