Msg("Initiating CortexBattle\n");
 
DirectorOptions <-
{
	// This turns off tanks and witches (when true).
	ProhibitBosses = true
 
	//LockTempo = true
 
	// Sets the time between mob spawns. Mobs can only spawn when the pacing is in the BUILD_UP state.
	MobSpawnMinTime = 6
	MobSpawnMaxTime = 11
 
	// How many zombies are in each mob.
	MobMinSize = 18
	MobMaxSize = 26
	MobMaxPending = 30
 
	// Modifies the length of the SUSTAIN_PEAK and RELAX states to shorten the time between mob spawns.
	SustainPeakMinTime = 5
	SustainPeakMaxTime = 7
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 1
	RelaxMaxInterval = 4
	RelaxMaxFlowTravel = 30
 
	//Special infected options
	SpecialRespawnInterval = 9999999999999
	CommonLimit = 26
	MaxSpecials = 0
        SmokerLimit = 0
	SpitterLimit = 0
        JockeyLimit = 0
        BoomerLimit = 0
        HunterLimit = 0
        ChargerLimit = 0
 
	// Valid spawn locations
	ZombieSpawnRange = 3600
	
}
 
Director.ResetMobTimer()		// Sets the mob spawn timer to 0.