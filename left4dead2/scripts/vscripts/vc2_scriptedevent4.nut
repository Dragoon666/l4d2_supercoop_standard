
//-----------------------------------------------------
local PANIC = 0
local TANK = 1
local DELAY = 0
//-----------------------------------------------------

DirectorOptions <-
{	

	A_CustomFinale1 = PANIC
	A_CustomFinaleValue1 = 3	
    AlwaysAllowWanderers = true	
	PreferredMobDirection = SPAWN_NO_PREFERENCE
	//PreferredMobDirection = SPAWN_ABOVE_SURVIVORS
	SpecialRespawnInterval = 3.0
	
	
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 1
	MobMaxPending = 90
	MobMinSize = 20
	MobMaxSize = 30
	SustainPeakMinTime = 15
	SustainPeakMaxTime = 18
	IntensityRelaxThreshold = 0.90
	RelaxMinInterval = 5
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 1000
	
	
	BoomerLimit = 2
	SmokerLimit = 2
	HunterLimit = 2
	ChargerLimit = 1
	SpitterLimit = 2
	JockeyLimit = 3
	
}

//Director.ResetMobTimer()