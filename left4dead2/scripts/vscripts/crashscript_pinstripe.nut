Msg("Initiating Pinstripe\n");
 
DirectorOptions <-
{
	// This turns off tanks and witches (when true).
	ProhibitBosses = true
 
	//LockTempo = true
 
	// Sets the time between mob spawns. Mobs can only spawn when the pacing is in the BUILD_UP state.
	MobSpawnMinTime = 10
	MobSpawnMaxTime = 20
 
	// How many zombies are in each mob.
	MobMinSize = 20
	MobMaxSize = 24
	MobMaxPending = 24
 
	// Modifies the length of the SUSTAIN_PEAK and RELAX states to shorten the time between mob spawns.
	SustainPeakMinTime = 5
	SustainPeakMaxTime = 10
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 2
	RelaxMaxInterval = 6
	RelaxMaxFlowTravel = 50
 
	//Special infected options
	SpecialRespawnInterval = 36
	MaxSpecials = 2
        SmokerLimit = 1
	SpitterLimit = 0
        JockeyLimit = 0
        BoomerLimit = 1
        HunterLimit = 0
        ChargerLimit = 0
 
	// Valid spawn locations
	
	
}
 
Director.ResetMobTimer()		// Sets the mob spawn timer to 0.