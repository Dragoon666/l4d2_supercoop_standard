Msg("l4d_grave_station_coop-------------------------------------------------------\n");

//荒野孤坟
DirectorOptions <-
{
	 cm_MaxSpecials = 14
	 DominatorLimit = 8

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