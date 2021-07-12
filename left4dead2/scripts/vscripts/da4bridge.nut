Msg("DA4Bridge1\n");

DirectorOptions <-
{
// This turns off tanks and witches.
ProhibitBosses = true

	PreferredMobDirection = SPAWN_BEHIND_SURVIVORS
	PreferredSpecialDirection = SPAWN_BEHIND_SURVIVORS
	LockTempo = true
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 3
	MobMinSize = 5
	MobMaxSize = 30
	MobMaxPending = 30
	SustainPeakMinTime = 5
	SustainPeakMaxTime = 10
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 1
	RelaxMaxInterval = 1
	RelaxMaxFlowTravel = 5
	SpecialRespawnInterval = 10.0
	MaxSpecials = 4
}

Director.ResetMobTimer()