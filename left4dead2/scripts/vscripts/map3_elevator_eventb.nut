//-----------------------------------------------------
// This script handles the logic for map 3 elevator event
//
//-----------------------------------------------------
Msg("Initiating map3 elevator script\n");

//-----------------------------------------------------

PANIC 		<- 0
TANK 		<- 1
DELAY 		<- 2

//-----------------------------------------------------

DirectorOptions <-
{	
	//How many stages?
	A_CustomFinale_StageCount = 2
	
	
	//Panic
	A_CustomFinale1 = PANIC
	A_CustomFinaleValue1 = 4
	
	
	//Delay for button start and such	
	A_CustomFinale2 = DELAY
	A_CustomFinaleValue2 = 10
	
}

//Stage counter to determine when the elevator moves up again

ElevatorReadyStage <- 2
ReadyToGo <- 0


function OnBeginCustomFinaleStage( num, type )
{
      printl( "Beginning custom event stage " + num + " of type " + type );
      ReadyToGo = num

//Checks to see panic done so elevator can continue
if ( ReadyToGo == ElevatorReadyStage )
    {
        Msg("Panic Complete - Elevator Enabled\n") 
        EntFire( "cargoelebutton1", "Unlock", "", 1 )
		EntFire( "cargoswitch1", "StartGlowing", "", 1 )
		EntFire( "level_throughput3", "Enable", "", 0 )
		
    }

}