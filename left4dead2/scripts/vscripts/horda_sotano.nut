
Msg("**Panic**\n")

DirectorOptions <-
{
    ProhibitBosses = true	
	BoomerLimit = 1
	SmokerLimit = 2
	HunterLimit = 1
	SpitterLimit = 1
	JockeyLimit = 1
  	ChargerLimit = 1
	BileMobSize = 15
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 1
	MobMinSize = 80
	MobMaxSize = 80
	MobMaxPending = 90
	SustainPeakMinTime = 15
	SustainPeakMaxTime = 18
	IntensityRelaxThreshold = 0.95
	RelaxMinInterval = 5
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 1000
	SpecialRespawnInterval = 5.0
	PreferredMobDirection = SPAWN_BEHIND_SURVIVORS
}

Director.ResetMobTimer()