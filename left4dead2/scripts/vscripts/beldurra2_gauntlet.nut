Msg("Initiating B2Gauntlet\n");

DirectorOptions <-
{
	PanicForever = true
	PausePanicWhenRelaxing = false

	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 9
	RelaxMaxInterval = 15
	RelaxMaxFlowTravel = 500

	LockTempo = 0
	SpecialRespawnInterval = 40
	PreTankMobMax = 40
	ZombieSpawnRange = 3000
	ZombieSpawnInFog = true

	MobSpawnSize = 25
	CommonLimit = 40

	GauntletMovementThreshold = 500.0
	GauntletMovementTimerLength = 3.0
	GauntletMovementBonus = 2.0
	GauntletMovementBonusMax = 10.0

	// length of bridge to test progress against.
	BridgeSpan = 16000

	MobSpawnMinTime = 10
	MobSpawnMaxTime = 30

	MobSpawnSizeMin = 25
	MobSpawnSizeMax = 40

	minSpeed = 20
	maxSpeed = 120

	speedPenaltyZAdds = 18

	CommonLimitMax = 45

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
	    
	    CommonLimit = MobSpawnSize * 1.8
	    
	    if ( CommonLimit > CommonLimitMax ) CommonLimit = CommonLimitMax;
	    

	}
}

function Update()
{
	DirectorOptions.RecalculateLimits();
}