Msg("Blue herbs in Raccoon City\n");

PrecacheEntityFromTable({classname = "weapon_rifle_sg552"})
PrecacheEntityFromTable({classname = "weapon_smg_mp5"})
PrecacheEntityFromTable({classname = "weapon_sniper_awp"})
PrecacheEntityFromTable({classname = "weapon_sniper_scout"})

::Herb1 <- false;
::Herb2 <- false;
::Herb3 <- false;
::Herb4 <- false;
::Herb5 <- false;
::Herb6 <- false;
::Herb7 <- false;
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

function MapStateTransfer()
{
	printl("Saving Herb 1.");

	g_ModeScript.HerbState.Herb1 = ::Herb1;
	g_ModeScript.HerbState.Herb2 = ::Herb2;
	g_ModeScript.HerbState.Herb3 = ::Herb3;
	g_ModeScript.HerbState.Herb4 = ::Herb4;	
	g_ModeScript.HerbState.Herb5 = ::Herb5;
	g_ModeScript.HerbState.Herb6 = ::Herb6;	
	g_ModeScript.HerbState.Herb7 = ::Herb7;
	g_ModeScript.HerbState.Herb8 = ::Herb8;
	
	SaveTable("HerbState", g_ModeScript.HerbState);
}

::MapStateTransfer <- MapStateTransfer;


function OnGameEvent_tank_killed( params )
{
	EntFire( "trig_logro_rpd", "Disable");
}