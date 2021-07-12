Msg("IHM - map1ForestCanyon\n");

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = false

	MaxSpecials = 4
	SpecialRespawnInterval = 3.0
	BoomerLimit = 1
	SmokerLimit = 2
	HunterLimit = 1
	ChargerLimit = 3
	SpitterLimit = 1
	JockeyLimit = 1
	MobSpawnMinTime = 30
	MobSpawnMaxTime = 60
	MobMaxPending = 30
	MobMinSize = 15
	MobMaxSize = 30
	ZombieSpawnRange = 2000
}

Director.ResetMobTimer()