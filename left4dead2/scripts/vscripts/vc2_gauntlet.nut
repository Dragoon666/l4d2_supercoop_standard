Msg("Initiating Gauntlet\n");

DirectorOptions <-
{
	PanicForever = true
	PausePanicWhenRelaxing = true

	PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
	
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 30
	RelaxMaxInterval = 40
	RelaxMaxFlowTravel = 400

	LockTempo = 0
	SpecialRespawnInterval = 20
	PreTankMobMax = 20
	ZombieSpawnRange = 2000
	ZombieSpawnInFog = true

	MobSpawnSize = 5
	CommonLimit = 5
	ChargerLimit = 0

	GauntletMovementThreshold = 500.0
	GauntletMovementTimerLength = 5.0
	GauntletMovementBonus = 2.0
	GauntletMovementBonusMax = 30.0

	// length of bridge to test progress against.
	BridgeSpan = 13600

	MobSpawnMinTime = 5
	MobSpawnMaxTime = 5

	MobSpawnSizeMin = 4
	MobSpawnSizeMax = 15

	minSpeed = 50
	maxSpeed = 200

	speedPenaltyZAdds = 15

	CommonLimitMax = 27

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
