Msg("Initiating Onslaught\n");

//-----------------------------------------------------
local PANIC = 0
//-----------------------------------------------------

DirectorOptions <-
{
	A_CustomFinale1 = PANIC
	A_CustomFinaleValue1 = 2
	ShouldAllowMobsWithTank = true
	TankLimit = 1
}

InitialPanicOptions <-
{
	ShouldConstrainLargeVolumeSpawn = true
}

function OnBeginCustomFinaleStage( num, type )
{

	local waveOptions = null
	if ( num == 1 )
	{
		waveOptions = InitialPanicOptions
	}
}
