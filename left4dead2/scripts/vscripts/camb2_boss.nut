IncludeScript("contraz/cgb3d_hook.nut");

zbmin <- 4
zbmax <- 5
spzbmax <- 2
spzbtime <- 65

if ( Director.IsSinglePlayerGame() )
{
	zbmin <- 1
	zbmax <- 2
	spzbmax <- 1
	spzbtime <- 75
}

DirectorOptions <-
{
	ProhibitBosses = true

	AlwaysAllowWanderers = 0
	PreferredMobDirection = 0
	CommonLimit = zbmax
	MobSpawnMinTime = 3
	MobSpawnMaxTime = 4
	MobMaxPending = 1
	MobMinSize = zbmin
	MobMaxSize = zbmax
	SustainPeakMinTime = 1
	SustainPeakMaxTime = 2
	IntensityRelaxThreshold = 0.7
	RelaxMinInterval = 5
	RelaxMaxInterval = 6
	RelaxMaxFlowTravel = 200
	
	MusicDynamicMobSpawnSize = 999
	MusicDynamicMobStopSize = 990
	MusicDynamicMobScanStopSize = 995
	
	DominatorLimit = spzbmax
	TotalSpecials = spzbmax
	MaxSpecials = spzbmax
	SpecialRespawnInterval = spzbtime
	
}
Director.ResetMobTimer()
