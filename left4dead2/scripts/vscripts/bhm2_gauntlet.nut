Msg("Initiating Lift Event Gauntlet\n");

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = false

	//SPAWN_IN_FRONT_OF_SURVIVORS
	//SPAWN_LARGE_VOLUME
	//SPAWN_BEHIND_SURVIVORS
	//SPAWN_NO_PREFERENCE
	//SPAWN_SPECIALS_ANYWHERE
	//SPAWN_ABOVE_SURVIVORS

	PreferredSpecialDirection = SPAWN_LARGE_VOLUME
	PreferredMobDirection = SPAWN_LARGE_VOLUME
	
	//=====================================================
	//Mob Attack Values
	//=====================================================	
	
	//Mob Attack	
	MobMinSize = 5
	MobMaxSize = 35
	MobMaxPending = 10
	MobSpawnSize = 20
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 2
	
	RelaxMinInterval = 5
	RelaxMaxInterval = 10
	RelaxMaxFlowTravel = 200

	SustainPeakMinTime = 1
	SustainPeakMaxTime = 3
		
	IntensityRelaxThreshold = 0.90
}

Director.ResetMobTimer()
Director.PlayMegaMobWarningSounds()
