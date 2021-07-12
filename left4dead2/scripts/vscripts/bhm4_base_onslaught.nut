Msg("Initiating Secondary Finale Onslaught\n");

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = true

    LockTempo = 1
	
	MobSpawnMinTime = 2
	MobSpawnMaxTime = 3
	MobMinSize = 24
	MobMaxSize = 27
	MobRechargeRate  = 0.30
	MobMaxPending = 25
	
	SustainPeakMinTime = 32
	SustainPeakMaxTime = 52
	
	IntensityRelaxThreshold = 0.60
	
	RelaxMinInterval = 2
	RelaxMaxInterval = 3
	RelaxMaxFlowTravel = -1000
	
	SpecialRespawnInterval = 12
	
	PreferredMobDirection = SPAWN_LARGE_VOLUME
	PreferredSpecialDirection = SPAWN_LARGE_VOLUME
	
	ZombieSpawnRange = 1600
	
	ShouldConstrainLargeVolumeSpawn = true
	
	AlwaysAllowWanderers = true
	
	HordeEscapeCommonLimit = 30
	NumReservedWanderers = 15
	
	GauntletMovementTreshhold = 700
	GauntletMovementTimerLength = 5.0
	GauntletMovementBonus = 2.0
	GauntletMovementBonusMax = 30.0
	
	BridgeSpan = 5600
	
	speedPenaltyZAdds = 15
}

Director.ResetMobTimer()
 
if ( Director.GetGameMode() == "versus" )
{
    DirectorOptions.IntensityRelaxThreshold <- 0.8;
}