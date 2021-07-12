//-----------------------------------------------------
local PANIC = 0
local TANK = 1
local DELAY = 2
//-----------------------------------------------------

DirectorOptions <-
{
	// This turns off tanks and witches.
	ProhibitBosses = false
	A_CustomFinale_StageCount = 1 // Number of stages. Used for calculating the Versus score.
	
	A_CustomFinale1 = TANK
	A_CustomFinaleValue1 = 1  // 1 tank!

	TankLimit = 2

}