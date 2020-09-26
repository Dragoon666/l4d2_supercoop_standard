Msg("\n\n\n");
Msg(">>>c14_junkyard_crescendo_cooldown\n");
Msg("\n\n\n");

DirectorOptions <-
{
	AlwaysAllowWanderers = true

	MobMinSize = 20
	MobMaxSize = 40
	MobMaxPending = 20
	SustainPeakMinTime = 5
	SustainPeakMaxTime = 8
	IntensityRelaxThreshold = 0.95

	RelaxMinInterval = 9999
	RelaxMaxInterval = 9999
	RelaxMaxFlowTravel = 900

	SpecialRespawnInterval = 5
	ZombieSpawnRange = 2000
	NumReservedWanderers = 20
}

Director.ResetMobTimer()