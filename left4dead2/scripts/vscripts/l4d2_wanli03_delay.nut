
Msg("**Delay started**\n")

DirectorOptions <-
{
	MobMinSize = 3
	MobMaxSize = 6
        
	BoomerLimit = 0
	SmokerLimit = 0
	HunterLimit = 0
	SpitterLimit = 0
	JockeyLimit = 0
	ChargerLimit = 0
        
	MinimumStageTime = 16
       
	CommonLimit = 6
}

Director.ResetMobTimer()


// start the delay timer
EntFire( "timer_delay_end", "enable" )

//reset
if ( Director.GetGameMode() == "coop" )
{
DelayTouchedOrPoured   <- 0
DelayPoured            <- 0
}
//-------------------------------------------------


// abort the delay if a survivor picks up or pours a gas can
function AbortDelay()
{
    Msg("**Delay aborted early**\n")    
    EntFire( "timer_delay_abort", "enable" )
}

function EndDelay()
{
        Msg("**Delay ended**\n") 
        EntFire( "timer_delay_end", "Disable" )
        EntFire( "timer_delay_end", "ResetTimer" )
        EntFire( "timer_delay_abort", "Disable" )
        EntFire( "timer_delay_abort", "ResetTimer" )
        EntFire( "@director", "EndCustomScriptedStage" )
}
