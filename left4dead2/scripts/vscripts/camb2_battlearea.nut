
IncludeScript("contraz/cgb3d_hook.nut");

zbmin <- 8
zbmax <- 10
spzbmax <- 2
spzbtime <- 45

if ( Director.IsSinglePlayerGame() )
{
	zbmin <- 3
	zbmax <- 5
	spzbmax <- 1
	spzbtime <- 55
}

DirectorOptions <-
{
	ProhibitBosses = true

	AlwaysAllowWanderers = 0
	PreferredMobDirection = 9
	CommonLimit = zbmax
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 2
	MobMaxPending = 1
	MobMinSize = zbmin
	MobMaxSize = zbmax
	SustainPeakMinTime = 1
	SustainPeakMaxTime = 2
	IntensityRelaxThreshold = 0.9
	RelaxMinInterval = 1
	RelaxMaxInterval = 2
	RelaxMaxFlowTravel = 10
	
	MusicDynamicMobSpawnSize = 999
	MusicDynamicMobStopSize = 990
	MusicDynamicMobScanStopSize = 995
	
	MaxSpecials = spzbmax
	SpecialRespawnInterval = spzbtime
	
}
Director.ResetMobTimer()
