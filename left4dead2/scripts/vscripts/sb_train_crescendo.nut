Msg("Initiating Train Crescendo\n");

local SPAWN_ABOVE_SURVIVORS = 6
local PANIC = 0

DirectorOptions <-
{

	// This turns off tanks and witches.
	ProhibitBosses = true

	MobSpawnMinTime = 1
	MobSpawnMaxTime = 1
	MobMinSize = 120
	MobMaxSize = 120
	MobMaxPending = 90
	SustainPeakMinTime = 15
	SustainPeakMaxTime = 18
	IntensityRelaxThreshold = 0.95
	RelaxMinInterval = 5
	RelaxMaxInterval = 5
	RelaxMaxFlowTravel = 1000
	
	
	PreferredMobDirection = SPAWN_ABOVE_SURVIVORS

	FallenSurvivorPotentialQuantity = 6
        FallenSurvivorSpawnChance       = 0.75
}


Director.PlayMegaMobWarningSounds()
Director.ResetMobTimer()