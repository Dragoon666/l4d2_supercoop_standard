Msg("Blue herbs in Raccoon City\n");

PrecacheEntityFromTable({classname = "weapon_rifle_sg552"})
PrecacheEntityFromTable({classname = "weapon_smg_mp5"})
PrecacheEntityFromTable({classname = "weapon_sniper_awp"})
PrecacheEntityFromTable({classname = "weapon_sniper_scout"})

::Herb5 <- false;


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

function MapStateTransfer()
{
	printl("Saving Herb 5.");

	g_ModeScript.HerbState.Herb5 = ::Herb5;
	
	SaveTable("HerbState", g_ModeScript.HerbState);
}

::MapStateTransfer <- MapStateTransfer;