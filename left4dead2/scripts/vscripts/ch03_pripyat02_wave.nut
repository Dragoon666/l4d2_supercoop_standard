
//-----------------------------------------------------
local PANIC = 0
local TANK = 1
local DELAY = 2
//-----------------------------------------------------

DirectorOptions <-
{
	A_CustomFinale_StageCount = 2 // Number of stages. Used for calculating the Versus score.
	
	A_CustomFinale1 = PANIC
	A_CustomFinaleValue1 = 2
	
	A_CustomFinale2 = DELAY
	A_CustomFinaleValue2 = 4
	 
	A_CustomFinale3 = PANIC
	A_CustomFinaleValue3 = 2
	
	ProhibitBosses = true

	PreferredMobDirection = SPAWN_NEAR_IT_VICTIM
	MobSpawnMinTime = 1
	MobSpawnMaxTime = 2
	MobMaxPending = 60
	MobMinSize = 55
	MobMaxSize = 65


}

Director.ResetMobTimer()
Director.PlayMegaMobWarningSounds()
