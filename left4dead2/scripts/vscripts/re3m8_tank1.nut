
Msg("**FIRST TANK**\n")

Director.ResetMobTimer()


// start the delay timer
EntFire( "case_tank1", "PickRandom" )
EntFire( "jefe_1", "PlaySound" )

function OnGameEvent_tank_killed( params )
{
EntFire( "@director", "EndCustomScriptedStage" );
}