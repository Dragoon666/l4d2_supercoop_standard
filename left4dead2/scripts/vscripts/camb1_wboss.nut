bzssmin <- 3
bzssmax <- 4
bteganmax <- 2
btegantime <- 60

if ( Director.IsSinglePlayerGame() )
{
	bzssmin <- 1
	bzssmax <- 2
	bteganmax <- 1
	btegantime <- 70
}

DirectorOptions <-
{
	ProhibitBosses = true

	CommonLimit = bzssmax
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 2
	MobMaxPending = 1
	MobMinSize = bzssmin
	MobMaxSize = bzssmax
	SustainPeakMinTime = 1
	SustainPeakMaxTime = 2
	IntensityRelaxThreshold = 0.3
	RelaxMinInterval = 4
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 20
	
	MusicDynamicMobSpawnSize = 99
	MusicDynamicMobStopSize = 99
	MusicDynamicMobScanStopSize = 99
	
	MaxSpecials = bteganmax
	SpecialRespawnInterval = btegantime
}
Director.ResetMobTimer()

IncludeScript("contraz/cgb2d_exhook.nut");
	