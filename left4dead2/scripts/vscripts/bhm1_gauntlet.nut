Msg("Initiating OutSkirts Gauntlet\n");

DirectorOptions <-
{
	//PanicForever = true
	ProhibitBosses = false
	
	//SPAWN_IN_FRONT_OF_SURVIVORS
	//SPAWN_LARGE_VOLUME
	//SPAWN_BEHIND_SURVIVORS
	//SPAWN_NO_PREFERENCE
	//SPAWN_SPECIALS_ANYWHERE
	//SPAWN_ABOVE_SURVIVORS

	PreferredSpecialDirection = SPAWN_IN_FRONT_OF_SURVIVORS
	PreferredMobDirection = SPAWN_LARGE_VOLUME
	
	SpecialRespawnInterval = 1.0
        SmokerLimit = 2
        JockeyLimit = 1
        BoomerLimit = 1
        HunterLimit = 2
        ChargerLimit = 2
		SpitterLimit = 1
	
	//=====================================================
	//Mob Attack Values
	//=====================================================	
	MobMinSize = 15
	MobMaxSize = 30
	
	MobSpawnSize = 20
	MobSpawnMinTime = 3
	MobSpawnMaxTime = 3
	
	SustainPeakMinTime = 1
	SustainPeakMaxTime = 3
	
	//=====================================================
	//Mob Relax Values
	//=====================================================	
	RelaxMinInterval = 1
	RelaxMaxInterval = 1
	RelaxMaxFlowTravel = 50
	
	IntensityRelaxThreshold = 0.99

	//=====================================================
	//Mob Pending Values
	//=====================================================	
	MobMaxPending = 10
	
}

Director.ResetMobTimer()
Director.PlayMegaMobWarningSounds()