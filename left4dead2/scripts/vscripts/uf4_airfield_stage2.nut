Msg("**Finale Stage 2: turn on power!**\n")

DirectorOptions <-
{
	MobMinSize = 2
	MobMaxSize = 3
        MobMaxPending = 10
	MobSpawnMinTime = 2
	MobSpawnMaxTime = 5
       
	CommonLimit = 30
        
	BoomerLimit = 1
	SmokerLimit = 2
	HunterLimit = 2
	SpitterLimit = 1
	JockeyLimit = 2
	ChargerLimit = 2

	ZombieSpawnRange = 1000
}

Director.ResetMobTimer()


//-------------------------------------------------

// Unlock switch, display hint
EntFire("power_switch_setup", "trigger");
EntFire( "progress_display", "TurnOff")

// End the stage once the power is turned back on
function EndStage()
{
        Msg("**Stage 2 ended**\n") 
        EntFire( "director", "EndCustomScriptedStage" )
}
