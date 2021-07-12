///////////////////////////////////////////////
//-----------------------------------------------------
local PANIC = 0
local TANK = 1
local DELAY = 0
//-----------------------------------------------------
DirectorOptions <-
{
	A_CustomFinale1 = PANIC
	A_CustomFinaleValue1 = 2	
    AlwaysAllowWanderers = true	
	PreferredMobDirection = SPAWN_ABOVE_SURVIVORS
	
	MobSpawnMinTime = 3
	MobSpawnMaxTime = 6
	MobMaxPending = 80
	MobMinSize = 4
	MobMaxSize = 8
	SustainPeakMinTime = 10
	SustainPeakMaxTime = 15
	IntensityRelaxThreshold = 0.90
	RelaxMinInterval = 1
	RelaxMaxInterval = 3
	RelaxMaxFlowTravel = 2000
	
	/////////////////////////////////////////////////////
	ZombieSpawnRange = 1024
	SpecialRespawnInterval = 8.0
	BoomerLimit = 0
	SmokerLimit = 1
	HunterLimit = 1
	ChargerLimit = 0
	SpitterLimit = 1
	JockeyLimit = 0
	

}

