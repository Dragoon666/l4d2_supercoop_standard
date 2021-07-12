Msg("Sis\n");

Convars.SetValue("z_charger_max_force", "8000");
Convars.SetValue("z_charge_duration", "9");
 
DirectorOptions <-
{
	// Random Tank/Witch
		ProhibitBosses = false
		
	// Special Infected settings
		SpecialRespawnInterval = 30
		MaxSpecials = 5
		SmokerLimit = 2
		SpitterLimit = 3
        JockeyLimit = 2
        BoomerLimit = 3
        HunterLimit = 2
        ChargerLimit = 2
		
	// Common Infected Settings
		MobMinSize = 40
		MobMaxSize = 50
		CommonLimit = 100
		ZombieSpawnRange = 2000
}