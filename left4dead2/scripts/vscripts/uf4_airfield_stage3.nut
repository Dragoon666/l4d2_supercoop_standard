Msg("**Finale Stage 3: to the hanger!**\n")

DirectorOptions <-
{
	//LockTempo = 0
	MobSpawnMinTime = 2
	MobSpawnMaxTime = 4
	MobMinSize = 30
	MobMaxSize = 30
	MobMaxPending = 30
	SustainPeakMinTime = 5
	SustainPeakMaxTime = 10
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 1
	RelaxMaxInterval = 1
	RelaxMaxFlowTravel = 50
        
	BoomerLimit = 1
	SmokerLimit = 2
	HunterLimit = 2
	SpitterLimit = 0
	JockeyLimit = 0
	ChargerLimit = 2

	CommonLimit = 50
	MinimumStageTime = 5
       
	PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
	PreferredSpecialDirection =  SPAWN_IN_FRONT_OF_SURVIVORS
	ZombieSpawnRange = 3000
}

Director.ResetMobTimer()
Director.PlayMegaMobWarningSounds()


//-------------------------------------------------


// End the stage once they arrive at the hanger
function EndStage()
{
        Msg("**Stage 3 ended**\n") 
        EntFire( "director", "EndCustomScriptedStage" )
}
