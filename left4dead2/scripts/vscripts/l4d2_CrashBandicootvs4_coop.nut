Msg("l4d2_CrashBandicootvs4_coop-------------------------------------------------------\n");

//崩溃的博士2：古惑狼
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