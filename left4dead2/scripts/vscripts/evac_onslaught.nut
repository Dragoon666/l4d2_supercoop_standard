Msg("Initiating Evac Onslaught");

DirectorOptions <-
{
// This turns off tanks and witches.
ProhibitBosses = false

//LockTempo = true
MobSpawnMinTime = 3
MobSpawnMaxTime = 7
MobMinSize = 10
MobMaxSize = 30
MobMaxPending = 50
SustainPeakMinTime = 5
SustainPeakMaxTime = 10
IntensityRelaxThreshold = 0.99
RelaxMinInterval = 1
RelaxMaxInterval = 5
RelaxMaxFlowTravel = 50
SpecialRespawnInterval = 0.8
PreferredMobDirection = SPAWN_FAR_AWAY_FROM_SURVIVORS
ZombieSpawnRange = 20000
}

Director.ResetMobTimer()