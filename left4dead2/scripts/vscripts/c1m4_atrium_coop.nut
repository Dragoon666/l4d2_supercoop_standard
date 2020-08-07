Msg("Super Coop");

DirectorOptions <-
{
	 cm_MaxSpecials = 8
	 cm_DominatorLimit = 8
	 TankLimit = 24
	 PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
	 PreferredSpecialDirection = SPAWN_SPECIALS_IN_FRONT_OF_SURVIVORS
	 ProhibitBosses = false
	 WitchLimit = 0
	 TankHitDamageModifierCoop = RandomFloat(1,5)
	 weaponsToConvert =
	 {
		weapon_vomitjar = "weapon_pain_pills"
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
Convars.SetValue("l4d2_spawn_uncommons_autochance","3")
Convars.SetValue("l4d2_spawn_uncommons_autotypes","59")
Convars.SetValue("z_witch_always_kills","1")
Convars.SetValue("director_max_threat_areas","0")
Convars.SetValue("tongue_victim_max_speed","700")
Convars.SetValue("tongue_range","2000")
Convars.SetValue("director_relax_min_interval","99999")
Convars.SetValue("director_relax_max_interval","99999")
Convars.SetValue("director_force_tank","0")
Convars.SetValue("director_force_witch","0")