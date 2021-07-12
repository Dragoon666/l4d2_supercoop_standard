Msg("Event Finale01\n");

DirectorOptions <-
{
PanicForever = true
// This turns off tanks and witches.
ProhibitBosses = true

//LockTempo = true
MobSpawnMinTime = 6
MobSpawnMaxTime = 10
MobMinSize = 6
MobMaxSize = 10
MobMaxPending = 11
SustainPeakMinTime = 5
SustainPeakMaxTime = 9
IntensityRelaxThreshold = 0.99
RelaxMinInterval = 1
RelaxMaxInterval = 5
RelaxMaxFlowTravel = 20
SpecialRespawnInterval = 20.0
PreferredMobDirection = SPAWN_NO_PREFERENCE
ZombieSpawnRange = 2700
PreferredSpecialDirection = SPAWN_NO_PREFERENCE
ZombieSpawnInFog = true
}

Director.ResetMobTimer()
