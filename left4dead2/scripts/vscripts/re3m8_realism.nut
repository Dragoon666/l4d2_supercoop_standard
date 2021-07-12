Msg(" atrium map script "+"\n")

PrecacheEntityFromTable({classname = "weapon_rifle_sg552"})
PrecacheEntityFromTable({classname = "weapon_smg_mp5"})
PrecacheEntityFromTable({classname = "weapon_sniper_awp"})
PrecacheEntityFromTable({classname = "weapon_sniper_scout"})
 
// number of cans needed to escape.
 
if ( Director.IsSinglePlayerGame() )
{
	NumCansNeeded <- 8
}
else
{
	NumCansNeeded <- 13
}
 
// This script is called on MapSpawn, so the CommonLimit is for play before the finale start.
DirectorOptions <-
{
 
CommonLimit = 15
 
}
 
NavMesh.UnblockRescueVehicleNav() // Unblock so humans can be rescued when incapped near nozzle
 
EntFire( "progress_display", "SetTotalItems", NumCansNeeded ) //Set number of cans with game_scavenge_progress_displayMsg("Blue herbs in Raccoon City\n");


::Herb8 <- false;


g_ModeScript.HerbState <-
{
	Herb1 = false,
	Herb2 = false,
	Herb3 = false,
	Herb4 = false,
	Herb5 = false,
	Herb6 = false,
	Herb7 = false,
	Herb8 = false,
}

function MapStateRestore()
{
	printl("Restoring campaign state.");
	
	RestoreTable("HerbState", g_ModeScript.HerbState);
	
	g_ModeScript.DeepPrintTable(g_ModeScript.HerbState);
	
	SaveTable("HerbState", g_ModeScript.HerbState);
}

::MapStateRestore <- MapStateRestore;

function HerbAddict()
{
	printl("Achievement unlocked.");
	
	RestoreTable("HerbState", g_ModeScript.HerbState);
	
	g_ModeScript.DeepPrintTable(g_ModeScript.HerbState);

	if(g_ModeScript.HerbState.Herb1) 
	{
		EntFire("contador_herbs", "Add", 1, 0, 1);
	}
	
	if(g_ModeScript.HerbState.Herb2) 
	{
		EntFire("contador_herbs", "Add", 1, 0, 1);
	}
	
	if(g_ModeScript.HerbState.Herb3) 
	{
		EntFire("contador_herbs", "Add", 1, 0, 1);
	}
	
	if(g_ModeScript.HerbState.Herb4) 
	{
		EntFire("contador_herbs", "Add", 1, 0, 1);
	}
	
	if(g_ModeScript.HerbState.Herb5) 
	{
		EntFire("contador_herbs", "Add", 1, 0, 1);
	}
	
	if(g_ModeScript.HerbState.Herb6) 
	{
		EntFire("contador_herbs", "Add", 1, 0, 1);
	}
	
	if(g_ModeScript.HerbState.Herb7) 
	{
		EntFire("contador_herbs", "Add", 1, 0, 1);
	}
	
	SaveTable("HerbState", g_ModeScript.HerbState);
}

::HerbAddict <- HerbAddict;