Msg("Initiating M4 Onslaught....\n");
EntFire( "m4_panichint2_relay" "Trigger" );

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = true
	TankLimit = 0
	WitchLimit = 0

	PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
	MobSpawnMinTime = 5
	MobSpawnMaxTime = 10
	MobMaxPending = 10
	MobMinSize = 12
	MobMaxSize = 16
	SustainPeakMinTime = 2
	SustainPeakMaxTime = 5
	IntensityRelaxThreshold = 1
	RelaxMinInterval = 4
	RelaxMaxInterval = 8
	RelaxMaxFlowTravel = 400

	ZombieSpawnRange = 1500
	CommonLimit = 30
	ShouldConstrainLargeVolumeSpawn = true
}

Director.ResetMobTimer()
Director.PlayMegaMobWarningSounds()