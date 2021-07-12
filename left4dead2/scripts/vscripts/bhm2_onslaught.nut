Msg("Initiating Dam Event Onslaught\n");

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = true

	//SPAWN_IN_FRONT_OF_SURVIVORS
	//SPAWN_LARGE_VOLUME
	//SPAWN_BEHIND_SURVIVORS
	//SPAWN_NO_PREFERENCE
	//SPAWN_SPECIALS_ANYWHERE
	//SPAWN_ABOVE_SURVIVORS

	//PreferredSpecialDirection = SPAWN_IN_FRONT_OF_SURVIVORS
	PreferredMobDirection = SPAWN_LARGE_VOLUME
	
	SpecialRespawnInterval = 1.0
        SmokerLimit = 1
        JockeyLimit = 1
        BoomerLimit = 0
        HunterLimit = 2
        ChargerLimit = 1
		SpitterLimit = 1
	
	
	//Mob Attack	
	MobMinSize = 5
	MobMaxSize = 30
	MobMaxPending = 5
	MobSpawnSize = 10
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 2
		
	IntensityRelaxThreshold = 0.90
	
	RelaxMinInterval = 5
	RelaxMaxInterval = 10
	RelaxMaxFlowTravel = 200
}

Director.ResetMobTimer()
Director.PlayMegaMobWarningSounds()
