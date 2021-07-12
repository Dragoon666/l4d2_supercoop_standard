Msg("**Finale Stage 0: Initializing!**\n")

DirectorOptions <-
{
	ProhibitBosses = true
	SpecialRespawnInterval = 15.0
	CommonLimit = 0
}

//-------------------------------------------------

// Number of cans needed
if ( Director.IsSinglePlayerGame() ) {
	NumCansNeeded <- 5
}
else {
	NumCansNeeded <- 8
}

EntFire( "progress_display", "SetTotalItems", NumCansNeeded )
EntFire( "progress_display", "TurnOn")