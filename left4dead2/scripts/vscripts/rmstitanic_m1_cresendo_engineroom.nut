Msg("Initiating Engine Room Cresendo\n");

local SPAWN_BEHIND_SURVIVORS = 1

//-----------------------------------------------------
local PANIC = 0
//-----------------------------------------------------

DirectorOptions <-
{
A_CustomFinale1 = PANIC
A_CustomFinaleValue1 = 2
	MobMaxPending = 20
	MobMinSize = 20
	MobMaxSize = 25
	MaxSpecials = 2
	CommonLimit = 30
}

Director.ResetMobTimer()