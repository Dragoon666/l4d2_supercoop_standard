Msg("the_hive_m5_finale-------------------------------------------------------\n");

//蜂巢

Director.ResetMobTimer()

DirectorOptions <-
{
	PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
	AlwaysAllowWanderers = 0
	WanderingZombieDensityModifier = 0.0
	
	LockTempo = true
	ZombieSpawnRange = 1500
}

Director.PlayMegaMobWarningSounds()
Director.ResetMobTimer()