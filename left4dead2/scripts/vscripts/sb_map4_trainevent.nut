Msg("Beginning Train Event\n");



//-----------------------------------------------------
local PANIC = 0
local TANK = 1
local DELAY = 2
//-----------------------------------------------------

DirectorOptions <-
{
	//-----------------------------------------------------
	//No tanks only panics
	
	 D_CustomFinale_StageCount = 5
	 
	 D_CustomFinale1 = PANIC
	 D_CustomFinaleValue1 = 3
	 
	 D_CustomFinale2 = DELAY
	 D_CustomFinaleValue2 = 1
	 
	 D_CustomFinale3 = PANIC
	 D_CustomFinaleValue3 = 2
	 
	 D_CustomFinale4 = DELAY
	 D_CustomFinaleValue4 = 1
	 
	 D_CustomFinale5 = PANIC
	 D_CustomFinaleValue5 = 3
	 
	SpecialRespawnInterval = 25
	SpitterLimit = 1
	BoomerLimit = 1
	//-----------------------------------------------------
}

//Train escape portion

RadioAntsy <- 2
HowManyStages <- 3
ReadyToGo <- 0


function OnBeginCustomFinaleStage( num, type )
{
      printl( "Beginning custom event stage " + num + " of type " + type );
      ReadyToGo = num

//Checks to see if the right amount of stages in the event have passed to force the train to leave
if ( ReadyToGo == HowManyStages )
    {
        Msg("Train is leaving the station\n") 
        EntFire( "train_leaving", "trigger", "", 3 )
    }

//Crazy ron getting antsy radio message
if ( ReadyToGo == RadioAntsy )
    {
        Msg("Crazy ron antsy audio\n") 
        EntFire( "sel3", "PickRandom", "", 2 )
    }
}