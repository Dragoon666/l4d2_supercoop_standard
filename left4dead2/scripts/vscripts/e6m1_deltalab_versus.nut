DirectorOptions <-
{
	WitchLimit = 2
        SmokerLimit = 0
        JockeyLimit = 1
        BoomerLimit = 1
        HunterLimit = 0
        ChargerLimit = 1
	SpitterLimit = 1
}
function OnGameEvent_round_start_post_nav( params )
{
	EntFire( "coop item", "Kill" );
}