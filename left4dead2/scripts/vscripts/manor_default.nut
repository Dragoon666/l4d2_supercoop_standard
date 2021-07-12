Msg("Initiating ManorDefault\n");

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = false
	
	ZombieSpawnInFog = true
	MobSpawnMinTime = 20
	MobSpawnMaxTime = 60
	MobMaxPending = 30
	MobMinSize = 15
	MobMaxSize = 20
	RelaxMaxFlowTravel = 500
}

Director.ResetMobTimer()
