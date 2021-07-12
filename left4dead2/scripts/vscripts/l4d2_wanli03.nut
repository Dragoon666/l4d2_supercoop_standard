
Msg(" WAN LI map script "+"\n")

// number of ice melted needed to escape.

if ( Director.IsSinglePlayerGame() )
{
	IceMeltedNeeded <- 7
}
else
{
	IceMeltedNeeded <- 7
}


DirectorOptions <-
{
	
CommonLimit = 15

}


function FireworkTouched()
{
    Msg("**Start the final**\n")    
	EntFire( "@director", "EndScript" )
	EntFire( "rescueboat_triggerfinale", "Enable" )
    	EntFire( "rescueboat_triggerfinale", "ForceFinaleStart" )
	EntFire( "rescueboat_triggerfinale", "Disable" )
}

NavMesh.UnblockRescueVehicleNav()

function IceMelted(){}