Msg("Blue herbs in Raccoon City\n");

PrecacheEntityFromTable({classname = "weapon_rifle_sg552"})
PrecacheEntityFromTable({classname = "weapon_smg_mp5"})
PrecacheEntityFromTable({classname = "weapon_sniper_awp"})
PrecacheEntityFromTable({classname = "weapon_sniper_scout"})

::Herb6 <- false;


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

function OnGameEvent_witch_killed( params )
{
if ( params["userid"] != null && params["userid"] != "" )
	{
		local player = GetPlayerFromUserID( params["userid"] );

		if ( player != null && player.IsValid() && player.GetActiveWeapon() && player.GetActiveWeapon().GetClassname() == "weapon_melee" 
			&& NetProps.GetPropString(player.GetActiveWeapon(),"m_ModelName").find("scythe_roku") != null )
		{
				EntFire( "relay_logro_witch", "Trigger");
		}
	}
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
	printl("Saving Herb 6.");

	g_ModeScript.HerbState.Herb6 = ::Herb6;
	
	SaveTable("HerbState", g_ModeScript.HerbState);
}

::MapStateTransfer <- MapStateTransfer;