Msg("band_of_rushers_coop-------------------------------------------------------\n");

//死亡系列
DirectorOptions <-
{
	 cm_MaxSpecials = 14
	 DominatorLimit = 8
	 ZombieTankHealth = RandomInt(20000,30000)
	 WitchLimit = 0

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

	PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
	PreferredSpecialDirection = SPAWN_SPECIALS_IN_FRONT_OF_SURVIVORS
	RelaxMaxFlowTravel = RandomInt(100,200)
	RelaxMinInterval = 2
	RelaxMaxInterval = 5
	SpecialRespawnInterval = 7
	CommonLimit = 30
	MegaMobSize = 90
	ProhibitBosses = false
}