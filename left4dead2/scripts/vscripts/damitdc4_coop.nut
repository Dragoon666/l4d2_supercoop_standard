Msg("damitdc4_coop-------------------------------------------------------\n");

//大坝2! 导演剪辑版
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