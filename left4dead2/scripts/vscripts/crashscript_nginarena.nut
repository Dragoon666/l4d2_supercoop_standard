Msg("Initiating NGinArena\n");
 
DirectorOptions <-
{
	// This turns off tanks and witches (when true).
	ProhibitBosses = true
 
	//LockTempo = true
 
	// Sets the time between mob spawns. Mobs can only spawn when the pacing is in the BUILD_UP state.
	MobSpawnMinTime = 10
	MobSpawnMaxTime = 15
 
	// How many zombies are in each mob.
	MobMinSize = 30
	MobMaxSize = 40
	MobMaxPending = 30
	ZombieSpawnRange = 3600
 
	// Modifies the length of the SUSTAIN_PEAK and RELAX states to shorten the time between mob spawns.
	SustainPeakMinTime = 5
	SustainPeakMaxTime = 10
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 1
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 50
 
	//Special infected options
	SpecialRespawnInterval = 99999999999999999
	MaxSpecials = 5
        SmokerLimit = 6
	SpitterLimit = 6
        JockeyLimit = 6
        BoomerLimit = 6
        HunterLimit = 6
        ChargerLimit = 6
 	DominatorLimit = 2
	// Valid spawn locations
	
	
}
 
Director.ResetMobTimer()		// Sets the mob spawn timer to 0.