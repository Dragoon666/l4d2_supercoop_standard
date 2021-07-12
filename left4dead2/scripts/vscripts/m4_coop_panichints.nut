Msg("Entered checkpoint.\nPausing M4 Onslaught..\n");

	EntFire( "m4_panichint4_relay" "Trigger" );

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = true
	TankLimit = 0
	WitchLimit = 0
}