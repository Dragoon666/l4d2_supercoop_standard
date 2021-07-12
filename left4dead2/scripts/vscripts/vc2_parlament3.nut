///////////////////////////////////////////////
//-----------------------------------------------------
local PANIC = 0
local TANK = 1
local DELAY = 0
//-----------------------------------------------------
DirectorOptions <-
{
	A_CustomFinale1 = PANIC
	A_CustomFinaleValue1 = 5	
    AlwaysAllowWanderers = true	
	PreferredMobDirection = SPAWN_NO_PREFERENCE
	
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 2
	MobMaxPending = 60
	MobMinSize = 3
	MobMaxSize = 10
	SustainPeakMinTime = 15
	SustainPeakMaxTime = 18
	IntensityRelaxThreshold = 0.90
	RelaxMinInterval = 1
	RelaxMaxInterval = 2
	RelaxMaxFlowTravel = 2000
	
	/////////////////////////////////////////////////////
	ZombieSpawnRange = 1000
	SpecialRespawnInterval = 12.0
	BoomerLimit = 0
	SmokerLimit = 1
	HunterLimit = 1
	ChargerLimit = 1
	SpitterLimit = 1
	JockeyLimit = 0
	

}

