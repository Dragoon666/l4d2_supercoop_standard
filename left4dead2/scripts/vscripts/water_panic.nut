Msg("Initiating Onslaught\n");

DirectorOptions <-
{

//LockTempo = true
MobSpawnMinTime = 6
MobSpawnMaxTime = 8
MobMinSize = 25
MobMaxSize = 30
MobMaxPending = 30
SustainPeakMinTime = 5
SustainPeakMaxTime = 6
IntensityRelaxThreshold = 0.99
RelaxMinInterval = 1
RelaxMaxInterval = 5
RelaxMaxFlowTravel = 50
PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
ZombieSpawnRange = 2000
}

Director.ResetMobTimer()