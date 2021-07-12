Msg("Initiating TinyTiger\n");
 
DirectorOptions <-
{
	// This turns off tanks and witches (when true).
	ProhibitBosses = true
 
	//LockTempo = true
 
	// Sets the time between mob spawns. Mobs can only spawn when the pacing is in the BUILD_UP state.
	MobSpawnMinTime = 2
	MobSpawnMaxTime = 3
 
	// How many zombies are in each mob.
	MobMinSize = 19
	MobMaxSize = 25
	MobMaxPending = 30
 
	// Modifies the length of the SUSTAIN_PEAK and RELAX states to shorten the time between mob spawns.
	SustainPeakMinTime = 5
	SustainPeakMaxTime = 10
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 1
	RelaxMaxInterval = 2
	RelaxMaxFlowTravel = 50
 
	//Special infected options
	SpecialRespawnInterval = 99999999999999999
	MaxSpecials = 0
        SmokerLimit = 0
	SpitterLimit = 0
        JockeyLimit = 0
        BoomerLimit = 0
        HunterLimit = 0
        ChargerLimit = 0
 
	// Valid spawn locations
	
	
}
 
Director.ResetMobTimer()		// Sets the mob spawn timer to 0.
