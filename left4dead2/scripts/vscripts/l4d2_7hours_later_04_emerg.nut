Msg("Initiating Onslaught\n");
 
DirectorOptions <-
{
	// This turns off tanks and witches (when true).
	ProhibitBosses = true
 
	//LockTempo = true
 
	// Sets the time between mob spawns. Mobs can only spawn when the pacing is in the BUILD_UP state.
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 1
 
	// How many zombies are in each mob.
	MobMinSize = 25
	MobMaxSize = 25
	MobMaxPending = 25
 
	// Modifies the length of the SUSTAIN_PEAK and RELAX states to shorten the time between mob spawns.
	SustainPeakMinTime = 5
	SustainPeakMaxTime = 10
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 1
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 50
 
	// Valid spawn locations
	PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
	ZombieSpawnRange = 2000
}
 
Director.ResetMobTimer()		// Sets the mob spawn timer to 0.
Director.PlayMegaMobWarningSounds()	// Plays the incoming mob sound effect.