//Custom Script to fake a finale
Msg("Initiating Phamton Louis Battle\n");
DirectorOptions <-
{
	MobMinSize = 10
	MobMaxSize = 15
	MobSpawnMinTime = 10
	MobSpawnMaxTime = 20
	MobMaxPending = 90
	SustainPeakMinTime = 20 
	SustainPeakMaxTime = 20 
	IntensityRelaxThreshold = 0.95
	ProhibitBosses = true
	RelaxMinInterval = 10
	RelaxMaxInterval = 10
	BoomerLimit = 1
	SmokerLimit = 2
	HunterLimit = 4
	ChargerLimit = 2
	JockeyLimit = 1
	SpitterLimit = 3
	SpecialRespawnInterval = 20
}

Director.PlayMegaMobWarningSounds()
Director.ResetMobTimer()