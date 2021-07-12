Msg("Checking to see if this is a single player experience...\n")

if ( Director.IsSinglePlayerGame() )
{
	EntFire( "finale_singleplayer" "Trigger" );
}
else
{
	EntFire( "finale_multiplayer" "Trigger" );
}
