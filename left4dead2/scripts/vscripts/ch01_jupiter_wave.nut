
//-----------------------------------------------------
local PANIC = 0
local TANK = 1
local DELAY = 2
//-----------------------------------------------------

DirectorOptions <-
{
	A_CustomFinale_StageCount = 2 // Number of stages. Used for calculating the Versus score.
	
	A_CustomFinale1 = 0
	A_CustomFinaleValue1 = 2
	
	A_CustomFinale2 = DELAY
	A_CustomFinaleValue2 = 0
	 
	A_CustomFinale3 = 0
	A_CustomFinaleValue3 = 1

	ProhibitBosses = true

	ZombieSpawnRange = 750
	MobMaxPending = 100
	MobMinSize = 80
	MobMaxSize = 100


}

Director.ResetMobTimer()
Director.PlayMegaMobWarningSounds()
