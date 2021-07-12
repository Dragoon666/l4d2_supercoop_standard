Msg("Initiating Manor_Inside\n");

DirectorOptions <-
{
	//ZombieSpawnRange = 600		
	//DisallowThreatType = ZOMBIE_TANK	
	//PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS	
	//AlwaysAllowWanderers = 1	
	//NumReservedWanderers = 10
	//FallenSurvivorSpawnChance = 0.75

	//ZombieSpawnRange = 800
	//ZombieSpawnInFog = true
	//PreferredMobDirection = SPAWN_ANYWHERE
	//AlwaysAllowWanderers = true
	//MobSpawnMinTime = 15
	//MobSpawnMaxTime = 30
	//MobMaxPending = 30
	//RelaxMaxFlowTravel = 500
	//ZombieSpawnInFog = true
	//ShouldConstrainLargeVolumeSpawn = false
	//SustainPeakMinTime = 5
	//SustainPeakMaxTime = 8	
	//IntensityRelaxThreshold = 0.98
	//RelaxMinInterval = 25
	//RelaxMaxInterval = 30
	//RelaxMaxFlowTravel = 850
	//SpecialRespawnInterval = 15.0
	//NumReservedWanderers = 10
	
	// This turns off tanks and witches.
	ProhibitBosses = false
	
	AlwaysAllowWanderers = true
	MobSpawnMinTime = 40
	MobSpawnMaxTime = 80
	//MobMinSize = 5
	MobMinSize = 20
	MobMaxSize = 25
	MobMaxPending = 30
	SustainPeakMinTime = 5
	SustainPeakMaxTime = 8
	//IntensityRelaxThreshold = 0.6
	IntensityRelaxThreshold = 0.95
	RelaxMinInterval = 25
	RelaxMaxInterval = 30
	RelaxMaxFlowTravel = 850
	//SpecialRespawnInterval = 30.0
	SpecialRespawnInterval = 15.0
	NumReservedWanderers = 10
	ZombieSpawnInFog = true
	
}

Director.ResetMobTimer()