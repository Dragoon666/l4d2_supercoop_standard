Msg("Initiating Onslaught\n");

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = false

        LockTempo = 0
	MobSpawnMinTime = 3
	MobSpawnMaxTime = 9
	MobMinSize = 25
	MobMaxSize = 40
	MobRechargeRate  = 10
	SustainPeakMinTime = 10
	SustainPeakMaxTime = 14
	IntensityRelaxThreshold = 0.90
	RelaxMinInterval = 1
	RelaxMaxInterval = 1
	RelaxMaxFlowTravel = -1000
	MobMaxPending = 30
	SpecialRespawnInterval = 40.0
	ZombieSpawnRange = 1000

}

Director.ResetMobTimer()
 
if ( Director.GetGameMode() == "versus" )
{
    DirectorOptions.IntensityRelaxThreshold <- 0.8;
}
