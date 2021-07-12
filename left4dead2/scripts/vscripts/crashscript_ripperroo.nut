Msg("Initiating RipperRoo\n");
 
DirectorOptions <-
{
	// This turns off tanks and witches (when true).
	ProhibitBosses = true
 
	//LockTempo = true
 
	// Sets the time between mob spawns. Mobs can only spawn when the pacing is in the BUILD_UP state.
	MobSpawnMinTime = 2
	MobSpawnMaxTime = 5
 
	// How many zombies are in each mob.
	MobMinSize = 42
	MobMaxSize = 50
	MobMaxPending = 50
 
	// Modifies the length of the SUSTAIN_PEAK and RELAX states to shorten the time between mob spawns.
	SustainPeakMinTime = 5
	SustainPeakMaxTime = 8
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 1
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 50
 
	//Special infected options
	SpecialRespawnInterval = 15
	MaxSpecials = 4
        SmokerLimit = 1
	SpitterLimit = 2
        JockeyLimit = 0
        BoomerLimit = 2
        HunterLimit = 1
        ChargerLimit = 0
 
	// Valid spawn locations
	
	
}
 
Director.ResetMobTimer()		// Sets the mob spawn timer to 0.