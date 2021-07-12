Msg("Initiating Manor_Escape\n");


//local SPAWN_ANYWHERE = 25
local PANIC = 1

local SPAWN_IN_FRONT_OF_SURVIVORS = 7 

DirectorOptions <-
{
	PanicForever = true
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 1
	MobMinSize = 10
	MobMaxSize = 30
	MobMaxPending = 90
	SustainPeakMinTime = 5
	SustainPeakMaxTime = 8
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 10
	RelaxMaxInterval = 15
	RelaxMaxFlowTravel = 600
	
	ZombieSpawnInFog = true
	ZombieSpawnRange = 600
	
	
	PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS
}


Director.PlayMegaMobWarningSounds()
Director.ResetMobTimer()