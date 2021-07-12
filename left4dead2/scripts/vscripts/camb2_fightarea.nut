
IncludeScript("contraz/cgb3d_hook.nut");

zbmin <- 7
zbmax <- 9
spzbmax <- 2
spzbtime <- 50

if ( Director.IsSinglePlayerGame() )
{
	zbmin <- 4
	zbmax <- 5
	spzbmax <- 1
	spzbtime <- 65
}

DirectorOptions <-
{
	LockTempo = true
	ProhibitBosses = true

	AlwaysAllowWanderers = 0
	PreferredMobDirection = 7
	CommonLimit = zbmax
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 2
	MobMaxPending = 1
	MobMinSize = zbmin
	MobMaxSize = zbmax
	SustainPeakMinTime = 1
	SustainPeakMaxTime = 2
	IntensityRelaxThreshold = 0.1
	RelaxMinInterval = 1
	RelaxMaxInterval = 2
	RelaxMaxFlowTravel = 10
	
	MusicDynamicMobSpawnSize = 999
	MusicDynamicMobStopSize = 990
	MusicDynamicMobScanStopSize = 995
	
	TotalSpecials = spzbmax
	MaxSpecials = spzbmax
	SpecialRespawnInterval = spzbtime
	
}
Director.ResetMobTimer()
