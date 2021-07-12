Msg("Initiating Raft Event\n");

EntFire( "director", "PanicEvent", 0 )

DirectorOptions <-
{
MobSpawnMinTime = 5
MobSpawnMaxTime = 8
MobMinSize = 7
MobMaxSize = 15
MobMaxPending = 15
SustainPeakMinTime = 6
SustainPeakMaxTime = 8
IntensityRelaxThreshold = 0.99
RelaxMinInterval = 1
RelaxMaxInterval = 5
RelaxMaxFlowTravel = 50
SpecialRespawnInterval = 1.0
SpitterLimit = 0
ChargerLimit = 0
TankLimit = 0
ProhibitBosses = true
}

