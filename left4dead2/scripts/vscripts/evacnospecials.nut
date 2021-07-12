Msg("GR Map01 Script Testing\n");

// remember to make different settings for single and multiplayer

DirectorOptions <-
{
	AlwaysAllowWanderers = false
	ProhibitBosses = true
	SpecialRespawnInterval = 145
	MaxSpecials = 0
	BoomerLimit = 0
	SmokerLimit = 0
	HunterLimit = 0
	ChargerLimit = 0
	SpitterLimit = 0
	JockeyLimit = 0

}
if ( Director.IsSinglePlayerGame() )
{
                EntFire( "Relay_Singleplayer", "Trigger" )
 
}

