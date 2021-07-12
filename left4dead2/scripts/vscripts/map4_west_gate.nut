Msg("Initiating West Gate Spawn Options\n");

DirectorOptions <-
{
	PreferredSpecialDirection = SPAWN_BEHIND_SURVIVORS
	BoomerLimit = 1
	ChargerLimit = 1
	JockeyLimit = 1
	HunterLimit = 1
	MobSpawnMaxTime = 30
	MobSpawnMinTime = 10
}
Director.ResetMobTimer()