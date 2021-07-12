//-----------------------------------------------------
local PANIC = 0
local TANK = 1
local DELAY = 2

local RandomFinaleStage5 = 0
local RandomFinaleStageValue5 = 0
local RandomFinaleStage7 = 0
local RandomFinaleStageValue7 = 0
local RandomFinaleStage8 = 0
local RandomFinaleStageValue8 = 0
local TankFlag = 0

// Phase 5
if ( RandomInt( 1, 100 ) < 50 )
{
	RandomFinaleStage5 = PANIC
	RandomFinaleStageValue5 = 4
}
else
{
	RandomFinaleStage5 = TANK
	TankFlag = 1
	if ( RandomInt( 1, 100 ) < 50 )
	{
		RandomFinaleStageValue5 = 1
	}
	else
	{
		RandomFinaleStageValue5 = 2
	}
}

// Phase 7
if ( TankFlag > 0)
{
		RandomFinaleStage7 = PANIC
		RandomFinaleStageValue7 = 4
}
else
{	
	if ( RandomInt( 1, 100 ) < 50 )
	{
		RandomFinaleStage7 = PANIC
		RandomFinaleStageValue7 = 4
	}
	else
	{
		TankFlag = 1
		RandomFinaleStage7 = TANK
		if ( RandomInt( 1, 100 ) < 50 )
		{
			RandomFinaleStageValue7 = 1
		}
		else
		{
			RandomFinaleStageValue7 = 2
		}
	}
}


// Phase 8

if ( TankFlag > 0)
{
	RandomFinaleStage8 = PANIC
	RandomFinaleStageValue8 = 4
}
else
{
	if ( RandomInt( 1, 100 ) < 50 )
	{
		RandomFinaleStage8 = PANIC
		RandomFinaleStageValue8 = 4
	}
	else
	{
		TankFlag = 1
		RandomFinaleStage8 = TANK
		if ( RandomInt( 1, 100 ) < 50 )
		{
			RandomFinaleStageValue8 = 1
		}
		else
		{
			RandomFinaleStageValue8 = 2
		}
	}
}

//-----------------------------------------------------


DirectorOptions <-
{
	//-----------------------------------------------------

	// 3 waves of mobs in between tanks

	 A_CustomFinale_StageCount = 8
	 
	 A_CustomFinale1 = PANIC
	 A_CustomFinaleValue1 = 4
	 
	 A_CustomFinale2 = DELAY
	 A_CustomFinaleValue2 = 9
	 
	 A_CustomFinale3 = TANK
	 A_CustomFinaleValue3 = 2
	 
	 A_CustomFinale4 = DELAY
	 A_CustomFinaleValue4 = 10
	 
	 A_CustomFinale5 = RandomFinaleStage5
	 A_CustomFinaleValue5 = RandomFinaleStageValue5
	 
	 A_CustomFinale6 = DELAY
	 A_CustomFinaleValue6 = 10
	 
	 A_CustomFinale7 = RandomFinaleStage7
	 A_CustomFinaleValue7 = RandomFinaleStageValue7
	 
	 A_CustomFinale8 = DELAY
	 A_CustomFinaleValue8 = 10
	 
	 A_CustomFinale9 = RandomFinaleStage8
	 A_CustomFinaleValue9 = RandomFinaleStageValue8
	 
	 A_CustomFinale10 = DELAY
	 A_CustomFinaleValue10 = 5
	 
	ZombieSpawnRange = 30
	HordeEscapeCommonLimit = 100
	CommonLimit = 110
	SpecialRespawnInterval = 25
	PreferredMobDirection = SPAWN_ANYWHERE
	PreferredSpecialDirection = SPAWN_SPECIALS_ANYWHERE
}

PanicOptions <-
{

	// MegaMobSize = 0 // randomized in OnBeginCustomFinaleStage
	MegaMobMinSize = 55
	MegaMobMaxSize = 80
	
	CommonLimit = 120
	
	SpecialRespawnInterval = 25
}


