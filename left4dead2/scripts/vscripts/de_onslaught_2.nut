Msg("Initiating Custom Onslaught\n");

DirectorOptions <-
{
// This turns off tanks and witches.
ProhibitBosses = false

//LockTempo = true
MobSpawnMinTime = 14
MobSpawnMaxTime = 28
MobMinSize = 90
MobMaxSize = 200
MobMaxPending = 200
SustainPeakMinTime = 15
SustainPeakMaxTime = 30
IntensityRelaxThreshold = 0.99
RelaxMinInterval = 1
RelaxMaxInterval = 3
RelaxMaxFlowTravel = 25
SpecialRespawnInterval = 6.0
PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
ZombieSpawnRange = 750
BoomerLimit = 2
SmokerLimit = 3
HunterLimit = 2
ChargerLimit = 2
SpitterLimit = 2
JockeyLimit = 3
}

Director.ResetMobTimer()