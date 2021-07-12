azssmin <- 12
azssmax <- 13
ateganmax <- 3
atgtime <- 48

if ( Director.IsSinglePlayerGame() )
{
	azssmin <- 5
	azssmax <- 7
	ateganmax <- 2
	atgtime <- 56
}


DirectorOptions <-
{
	ProhibitBosses = true

	CommonLimit = azssmax
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 2
	MobMaxPending = 2
	MobMinSize = azssmin
	MobMaxSize = azssmax
	SustainPeakMinTime = 1
	SustainPeakMaxTime = 3
	IntensityRelaxThreshold = 0.60
	RelaxMinInterval = 3
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 250
	
	MusicDynamicMobSpawnSize = 99
	MusicDynamicMobStopSize = 99
	MusicDynamicMobScanStopSize = 99
	
	MaxSpecials = ateganmax
	SpecialRespawnInterval = atgtime
	
	PreferredMobDirection = 7
}
Director.ResetMobTimer()

IncludeScript("contraz/cgb2d_exhook.nut");
	