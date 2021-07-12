
Msg(" outpostbc map script "+"\n")

// number of cans needed to escape.

if ( Director.IsSinglePlayerGame() )
{
	NumCansNeeded <- 8
	Msg("---------------------------SINGLE PLAYER\n");
}
else
{
	NumCansNeeded <- 13
	Msg("----------------------------MULTI PLAYER\n");
}


DirectorOptions <-
{
	
CommonLimit = 45

}

NavMesh.UnblockRescueVehicleNav()

EntFire( "progress_display", "SetTotalItems", NumCansNeeded )


function GasCanPoured(){}