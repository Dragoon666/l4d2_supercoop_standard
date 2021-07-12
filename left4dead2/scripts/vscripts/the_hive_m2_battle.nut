Msg("Initiating the_hive_m2_battle Onslaught\n");

Director.ResetMobTimer()

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = 1
	PreferredMobDirection = SPAWN_ANYWHERE
	AlwaysAllowWanderers = 0
	WanderingZombieDensityModifier = 0.0
	DisallowThreatType = ZOMBIE_WITCH | ZOMBIE_TANK
	
	LockTempo = true
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 1
	MobMinSize = 10
	MobMaxPending = 30
	MobMaxSize = 20
	SustainPeakMinTime = 5
	SustainPeakMaxTime = 10
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 1
	RelaxMaxInterval = 2
	RelaxMaxFlowTravel = 25
	ZombieSpawnRange = 1500
}

Director.PlayMegaMobWarningSounds()
Director.ResetMobTimer()