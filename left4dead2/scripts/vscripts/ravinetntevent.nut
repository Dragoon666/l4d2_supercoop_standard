Msg("Initiating Barricade Crescendo\n");
//-----------------------------------------------------
local PANIC = 0
local DELAY = 0
local TANK = 0
//-----------------------------------------------------
DirectorOptions <-
{
//-----------------------------

	A_CustomFinale1 = PANIC

//------------------------------
	
	PanicForever = true
	PreferredMobDirection = SPAWN_ANYWHERE
	PreferredSpecialDirection = SPAWN_LARGE_VOLUME
	MobSpawnMinTime = 8
	MobSpawnMaxTime = 18
	MobMaxPending = 30
	IntensityRelaxThreshold = 0.01
	RelaxMinInterval = 1
	RelaxMaxInterval = 1
	SustainPeakMinTime = 2
	SustainPeakMaxTime = 2
	SpecialRespawnInterval = 15
        SmokerLimit = 1
        JockeyLimit = 1
        BoomerLimit = 1
        HunterLimit = 1
        ChargerLimit = 1
	MobMinSize = 22
	MobMaxSize = 27
	PausePanicWhenRelaxing = false
	RelaxMaxFlowTravel = -1000
}

if ( Director.GetGameMode() == "versus" )
{
   DirectorOptions.IntensityRelaxThreshold <- 0.8;
}

Director.ResetMobTimer()