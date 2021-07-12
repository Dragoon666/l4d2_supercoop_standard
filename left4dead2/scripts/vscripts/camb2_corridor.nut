
IncludeScript("contraz/cgb3d_hook.nut");

zbmin <- 12
zbmax <- 14
spzbmax <- 3
spzbtime <- 60

if ( Director.IsSinglePlayerGame() )
{
	zbmin <- 5
	zbmax <- 7
	spzbmax <- 2
	spzbtime <- 75
}

DirectorOptions <-
{
	LockTempo = false
	ProhibitBosses = true

	AlwaysAllowWanderers = 1
	PreferredMobDirection = 0
	CommonLimit = zbmax
	MobSpawnMinTime = 4
	MobSpawnMaxTime = 5
	MobMaxPending = 1
	MobMinSize = zbmin
	MobMaxSize = zbmax
	SustainPeakMinTime = 4
	SustainPeakMaxTime = 6
	IntensityRelaxThreshold = 0.6
	RelaxMinInterval = 2
	RelaxMaxInterval = 3
	RelaxMaxFlowTravel = 1200
	
	MusicDynamicMobSpawnSize = 999
	MusicDynamicMobStopSize = 990
	MusicDynamicMobScanStopSize = 995
	
	TotalSpecials = spzbmax
	MaxSpecials = spzbmax
	SpecialRespawnInterval = spzbtime
	
}
