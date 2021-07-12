Msg("l4d2_tanksplayground_coop-------------------------------------------------------\n");

//坦克竞技场
DirectorOptions <-
{
	weaponsToConvert =
	{
		weapon_vomitjar = "weapon_molotov_spawn"
		weapon_pipebomb = "weapon_molotov_spawn"
	}

	 function ConvertWeaponSpawn( classname )
	 {
		if ( classname in weaponsToConvert )
		{
			return weaponsToConvert[classname];
		}
		return 0;
	 }
}
Convars.SetValue("l4d2_wsc_hunting_rifle","8")
Convars.SetValue("l4d2_wsc_autoshotgun","8")
Convars.SetValue("l4d2_wsc_melee","8")
Convars.SetValue("l4d2_wsc_molotov","8")
Convars.SetValue("l4d2_wsc_pain_pills","8")
Convars.SetValue("l4d2_wsc_adrenaline","8")
Convars.SetValue("l4d2_wsc_grenade_launcher","2")
Convars.SetValue("l4d2_wsc_pistol","8")
Convars.SetValue("l4d2_wsc_pistol_magnum","8")
Convars.SetValue("l4d2_wsc_pumpshotgun","8")
Convars.SetValue("l4d2_wsc_rifle","8")
Convars.SetValue("l4d2_wsc_rifle_ak47","8")
Convars.SetValue("l4d2_wsc_rifle_desert","8")
Convars.SetValue("l4d2_wsc_rifle_m60","2")
Convars.SetValue("l4d2_wsc_rifle_sg552","8")
Convars.SetValue("l4d2_wsc_shotgun_chrome","8")
Convars.SetValue("l4d2_wsc_shotgun_spas","8")
Convars.SetValue("l4d2_wsc_smg","8")
Convars.SetValue("l4d2_wsc_sniper_awp","2")
Convars.SetValue("l4d2_wsc_sniper_military","8")
Convars.SetValue("l4d2_wsc_sniper_scout","8")