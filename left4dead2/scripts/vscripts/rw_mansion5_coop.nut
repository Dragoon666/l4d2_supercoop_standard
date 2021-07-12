Msg("rw_mansion5_coop-------------------------------------------------------\n");

//超速感染
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