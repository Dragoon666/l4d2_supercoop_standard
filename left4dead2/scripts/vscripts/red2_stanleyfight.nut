//-----------------------------------------------------
// This script handles the logic for the Redemption II Finale
//
//-----------------------------------------------------
Msg("Initiating redemption ii finale script\n");

//-----------------------------------------------------

PANIC 		<- 0
TANK 		<- 1
DELAY           <- 2
ONSLAUGHT       <- 3 

//-----------------------------------------------------

DirectorOptions <-
{

	MobMinSize = 35
	MobMaxSize = 40
	
//How many stages?
A_CustomFinale_StageCount = 9

A_CustomFinale1 = PANIC
A_CustomFinaleValue1 = 1

A_CustomFinale2 = DELAY
A_CustomFinaleValue2 = 0.1

A_CustomFinale3 = PANIC
A_CustomFinaleValue3 = 1

A_CustomFinale4 = DELAY
A_CustomFinaleValue4 = 0.1

A_CustomFinale5 = PANIC
A_CustomFinaleValue5 = 1

A_CustomFinale6 = DELAY
A_CustomFinaleValue6 = 1

A_CustomFinale7 = TANK
A_CustomFinaleValue7 = 2

A_CustomFinale8 = DELAY
A_CustomFinaleValue8 = 3

A_CustomFinale9 = ONSLAUGHT
A_CustomFinaleValue9 = "red2_stanley_end" // end stanley
		
}

