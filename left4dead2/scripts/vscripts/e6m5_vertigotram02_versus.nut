DirectorOptions <-
{
	WitchLimit = 1
        SmokerLimit = 1
        JockeyLimit = 1
        BoomerLimit = 2
        HunterLimit = 1
        ChargerLimit = 1
	SpitterLimit = 1
}
function OnGameEvent_round_start_post_nav( params )
{
	EntFire( "coop item", "Kill" );
}