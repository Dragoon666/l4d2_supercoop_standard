Msg("Initiating 1st Class Lounge Cresendo\n");

//-----------------------------------------------------
local PANIC = 0
//-----------------------------------------------------

DirectorOptions <-
{
A_CustomFinale1 = PANIC
A_CustomFinaleValue1 = 2
	MobMaxPending = 30
	MobMinSize = 25
	MobMaxSize = 30
	MaxSpecials = 2
	CommonLimit = 30
}

Director.ResetMobTimer()