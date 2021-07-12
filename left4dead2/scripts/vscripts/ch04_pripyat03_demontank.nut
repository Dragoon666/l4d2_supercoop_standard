DirectorOptions <-
{
// Common
	// Multiplier for the amount of wandering infected.
		WanderingZombieDensityModifier = 2.0	
	
	// Turn always wanderer on
	AlwaysAllowWanderers = 1

	// Set the number of infected that cannot be absorbed
	NumReservedWanderers = 0
	
	// Maximum number of commons allowed to be in play simultaneously.
	CommonLimit = 200

	// Maximum time to spend in the RELAX tempo
		RelaxMaxInterval = 35
	// Minimum time to spend in the RELAX tempo.
		RelaxMinInterval = 25
	// How far the survivors can advance along the flow before transitioning from RELAX to BUILD_UP.	
		RelaxMaxFlowTravel = 5
	
	PreferredMobDirection = SPAWN_NO_PREFERENCE
	
	ClearedWandererRespawnChance = 80
	
	MobMinSize = 10
	MobMaxPending = 20
	MobMaxSize = 40
	IntensityRelaxThreshold = 0.95
	
	ZombieSpawnRange = 1100
		
	
// Specials
	
	// Maximum number of Director spawned Special Infected allowed to be in play simultaneously.
	MaxSpecials = 1
	
	// Time in seconds before a Special Infected slot can respawn an infected.
		SpecialRespawnInterval = 120.0

	SmokerLimit = 0
	HunterLimit = 0
	WitchLimit = 0
	ChargerLimit = 0
	
	TankLimit = 1
	TankHitDamageModifierCoop = 1.0
	ZombieTankHealth = 5000
	
	//	SurvivorModels = {
	//	coach = "models/survivors/survivor_coach.mdl"
	//	ellis = "models/survivors/survivor_mechanic.mdl"
	//	nick = "models/survivors/survivor_gambler.mdl"
	//	rochelle = "models/survivors/survivor_producer.mdl"
	//	louis = "models/survivors/survivor_manager.mdl"
	//	bill = "models/survivors/survivor_namvet.mdl"
	//	francis = "models/survivors/survivor_biker.mdl"
	//	zoey = "models/survivors/survivor_teenangst.mdl"
	//}

}