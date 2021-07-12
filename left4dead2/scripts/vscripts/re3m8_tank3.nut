
Msg("**THIRD TANK**\n")

Director.ResetMobTimer()


// start the delay timer
EntFire( "case_tank2", "PickRandom" )
EntFire( "jefe_2", "PlaySound" )

function OnGameEvent_tank_killed( params )
{
EntFire( "@director", "EndCustomScriptedStage" );
}