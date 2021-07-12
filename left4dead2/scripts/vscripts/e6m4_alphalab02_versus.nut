DirectorOptions <-
{
	WitchLimit = 6
        SmokerLimit = 1
        JockeyLimit = 0
        BoomerLimit = 1
        HunterLimit = 1
        ChargerLimit = 1
	SpitterLimit = 1
}

function OnGameEvent_round_start_post_nav( params )
{
	EntFire( "coop item", "Kill" );
	EntFire( "witch_portal_versus_relay", "Trigger" );
}