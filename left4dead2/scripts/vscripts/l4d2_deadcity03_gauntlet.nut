Msg("Initiating Bridge Gauntlet\n");

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = false

	PanicForever = true
	PausePanicWhenRelaxing = false

	IntensityRelaxThreshold = 0.99
	
	RelaxMinInterval = 1
	RelaxMaxInterval = 15
	RelaxMaxFlowTravel = 45

	LockTempo = false
	
	SpecialRespawnInterval = 10
	PreTankMobMax = 20
	
	
	PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
	//PreferredMobDirection = SPAWN_BEHIND_SURVIVORS
	//PreferredMobDirection = SPAWN_LARGE_VOLUME
	PreferredSpecialDirection = SPAWN_IN_FRONT_OF_SURVIVORS

	ZombieSpawnRange = 2048
	ZombieSpawnInFog = false

	CommonLimit = 5
	CommonLimitMax = 60

	GauntletMovementThreshold = 500.0
	GauntletMovementTimerLength = 5.0
	GauntletMovementBonus = 2.0
	GauntletMovementBonusMax = 30.0

	// length of bridge to test progress against.
	BridgeSpan = 8000

	NumReservedWanderers = 128
	
	MobMaxPending = 30
	
	MobSpawnSize = 5
	MobSpawnSizeMin = 5
	MobSpawnSizeMax = 20
	
	MobSpawnMinTime = 5
	MobSpawnMaxTime = 5


	minSpeed = 50
	maxSpeed = 200

	speedPenaltyZAdds = 15

	
	function RecalculateLimits()
	{
	//Increase common limit based on progress  
	    local progressPct = ( Director.GetFurthestSurvivorFlow() / BridgeSpan )
	    
	    if ( progressPct < 0.0 ) progressPct = 0.0;
	    if ( progressPct > 1.0 ) progressPct = 1.0;
	    
	    MobSpawnSize = MobSpawnSizeMin + progressPct * ( MobSpawnSizeMax - MobSpawnSizeMin )


	//Increase common limit based on speed   
	    local speedPct = ( Director.GetAveragedSurvivorSpeed() - minSpeed ) / ( maxSpeed - minSpeed );

	    if ( speedPct < 0.0 ) speedPct = 0.0;
	    if ( speedPct > 1.0 ) speedPct = 1.0;

	    MobSpawnSize = MobSpawnSize + speedPct * ( speedPenaltyZAdds );
	    
	    CommonLimit = MobSpawnSize * 1.5
	    
	    if ( CommonLimit > CommonLimitMax ) CommonLimit = CommonLimitMax;
	    

	}
}

function Update()
{
	DirectorOptions.RecalculateLimits();
}