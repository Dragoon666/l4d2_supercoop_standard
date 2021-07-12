Msg("Initiating DA Gauntlet Return\n");

DirectorOptions <-
{
	GasCansOnBacks = true
	PanicForever = true
	PausePanicWhenRelaxing = true

	IntensityRelaxThreshold = 1
	RelaxMinInterval = 5
	RelaxMaxInterval = 20
	RelaxMaxFlowTravel = 1

	LockTempo = 0
	SpecialRespawnInterval = 20
	PreTankMobMax = 20
	ZombieSpawnRange = 3400
	ZombieSpawnInFog = true
	SmokerLimit = 2
	MaxSpecials = 4
	PreferredMobDirection = SPAWN_BEHIND_SURVIVORS
	PreferredSpecialDirection = SPAWN_BEHIND_SURVIVORS

	MobSpawnSize = 15
	CommonLimit = 20

	// length of bridge to test progress against.
		BridgeSpan = 7500

	MobSpawnMinTime = 1
	MobSpawnMaxTime = 2

	MobSpawnSizeMin = 10
	MobSpawnSizeMax = 30

	minSpeed = 50
	maxSpeed = 200

	speedPenaltyZAdds = 30

	CommonLimitMax = 30
	function RecalculateLimits()
	{
	//Increase common limit based on progress  
	    local progressPct = ( Director.GetFurthestSurvivorFlow() + BridgeSpan )
	    
	    if ( progressPct < 0.0 ) progressPct = 0.0;
	    if ( progressPct > 1.0 ) progressPct = 1.0;
	    
	    MobSpawnSize = MobSpawnSizeMin + progressPct * ( MobSpawnSizeMax - MobSpawnSizeMin )


	//Increase common limit based on speed   
	    local speedPct = ( Director.GetAveragedSurvivorSpeed() - minSpeed ) / ( maxSpeed - minSpeed );

	    if ( speedPct < 0.0 ) speedPct = 0.0;
	    if ( speedPct > 1.0 ) speedPct = 1.0;

	    MobSpawnSize = MobSpawnSize + speedPct * ( speedPenaltyZAdds );
	    
	    CommonLimit = MobSpawnSize * 2
	    
	    if ( CommonLimit > CommonLimitMax ) CommonLimit = CommonLimitMax;

	}

}

function Update()
{
	DirectorOptions.RecalculateLimits();
}