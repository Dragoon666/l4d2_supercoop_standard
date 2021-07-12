Msg("vincegay\n");
 
DirectorOptions <-
{
	PanicForever = true
	PausePanicWhenRelaxing = true

	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 1
	RelaxMaxInterval = 2
	RelaxMaxFlowTravel = 400

	LockTempo = 0
	ZombieSpawnRange = 3000
	ZombieSpawnInFog = true



	GauntletMovementThreshold = 500.0
	GauntletMovementTimerLength = 5.0
	GauntletMovementBonus = 2.0
	GauntletMovementBonusMax = 30.0


	// Special Infected settings
		SpecialRespawnInterval = 999999
		MaxSpecials = 100
		SmokerLimit = 10
		SpitterLimit = 10
        JockeyLimit = 10
        BoomerLimit = 10
        HunterLimit = 10
        ChargerLimit = 10
		
	// Common Infected Settings
		MobMinSize = 0
		MobMaxSize = 0
		CommonLimit = 0
		ZombieSpawnRange = 0
}