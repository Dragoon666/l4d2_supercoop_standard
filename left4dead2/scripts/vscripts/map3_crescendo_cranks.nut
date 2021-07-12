Msg("Initiating Onslaught at the crane\n");

//-----------------------------------------------------
local PANIC = 0
local TANK = 0
local SPAWN_ABOVE_SURVIVORS = 1
local DELAY = 0
//-----------------------------------------------------


DirectorOptions <-
{
	A_CustomFinale1 = PANIC
	PanicForever = true
	MobMaxPending = 30
	PreferredMobDirection = SPAWN_ABOVE_SURVIVORS
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 2
	MobMaxSize = 20
	MobMinSize = 15
	SpecialRespawnInterval = 3.5
	IntensityRelaxThreshold = 0.99
	RelaxMinInterval = 1
	RelaxMaxInterval = 2
	SpecialRespawnInterval = 1.0
	PreferredSpecialDirection = SPAWN_ABOVE_SURVIVORS
	PausePanicWhenRelaxing = false
}


//-----------------------------------------------------


/*
*/