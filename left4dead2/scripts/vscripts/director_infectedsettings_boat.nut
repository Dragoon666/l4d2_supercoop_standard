Msg("happy sailin");

Convars.SetValue("z_hunter_lunge_distance", "1000");
Convars.SetValue("tongue_range", "1500");

DirectorOptions <-
{
	// Random Tank/Witch
		ProhibitBosses = true
		
	// Special Infected settings
		SpecialRespawnInterval = 9999999999
		MaxSpecials = 90
		SmokerLimit = 99
		SpitterLimit = 9
        JockeyLimit = 9
        BoomerLimit = 9
        HunterLimit = 9
        ChargerLimit = 9
		
	// Common Infected Settings
		MobMinSize = 0
		MobMaxSize = 0
		CommonLimit = 0
		ZombieSpawnRange = 2000
}