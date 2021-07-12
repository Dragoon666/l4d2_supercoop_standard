Msg("l4d_zero05_aerith_coop-------------------------------------------------------\n");

//绝对零度
DirectorOptions <-
{
	 cm_MaxSpecials = 14
	 DominatorLimit = 8
	 TankLimit = 24

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