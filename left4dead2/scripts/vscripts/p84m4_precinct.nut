
Msg(" Precinct 84 Finale script "+"\n")

// number of cans needed to escape.

if ( Director.IsSinglePlayerGame() )
{
	NumCansNeeded <- 6
}
else
{
	NumCansNeeded <- 12
}


DirectorOptions <-
{
	
CommonLimit = 30

}

NavMesh.UnblockRescueVehicleNav()

EntFire( "progress_display", "SetTotalItems", NumCansNeeded )


function GasCanPoured(){}