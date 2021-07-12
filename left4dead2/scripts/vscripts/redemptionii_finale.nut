//-----------------------------------------------------
// This script handles the logic for the Redemption II Finale
//
//-----------------------------------------------------
Msg("Initiating redemption ii finale script\n");

//-----------------------------------------------------

PANIC 		<- 0
TANK 		<- 1
DELAY 		<- 2

//-----------------------------------------------------

DirectorOptions <-
{	
	//How many stages?
	A_CustomFinale_StageCount = 5
	
	
	//Initial attack of hordes
	A_CustomFinale1 = PANIC
	A_CustomFinaleValue1 = 2
	
	
	//Delay between hordes and tanks	
	A_CustomFinale2 = DELAY
	A_CustomFinaleValue2 = 10
	
		
	//Fight the 2 tanks
	A_CustomFinale3 = TANK
	A_CustomFinaleValue3 = 2
	
	
	//Delay between the trains 180 rotation and the canister event - allowing for dialogue and the doors to open
	A_CustomFinale4 = DELAY
	A_CustomFinaleValue4 = 9999 //Fire off the canister panic via input to finale: AdvanceFinaleState
	
	
	// Fighting during the canister dynamic - this dynamic continues until the canisters are all loaded.
	A_CustomFinale5 = PANIC
	A_CustomFinaleValue5 = 9999
	
	
	//Profit!
	 
	TankLimit = 2
	WitchLimit = 0
	CommonLimit = 20	
	HordeEscapeCommonLimit = 20	
	EscapeSpawnTanks = true
	
}

//Stage counter to determine when the canister dynamic should begin

TankPostStage <- 4
HowManyStages <- 5
ReadyToGo <- 0


function OnBeginCustomFinaleStage( num, type )
{
      printl( "Beginning custom event stage " + num + " of type " + type );
      ReadyToGo = num

//Checks to see if the 2 tank portion is complete
if ( ReadyToGo == TankPostStage )
    {
        Msg("Tank stage complete\n") 
        EntFire( "tank_stage_complete", "SetValue", "1", 1 )
		
    }

}