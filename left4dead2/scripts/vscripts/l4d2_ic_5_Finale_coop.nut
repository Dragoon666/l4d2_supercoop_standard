Msg("l4d2_ic_5_Finale_coop-------------------------------------------------------\n");

//感染之城
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