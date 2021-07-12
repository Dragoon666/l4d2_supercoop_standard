PANIC <- 0
TANK <- 1
DELAY <- 2

DirectorOptions <-
{
	//-----------------------------------------------------
	 CommonLimit = 30
	 A_CustomFinale_StageCount = 6
	 
	 A_CustomFinale1 = PANIC
	 A_CustomFinaleValue1 = 3  // 
	 
	 A_CustomFinale2 = DELAY
	 A_CustomFinaleValue2 = 6  // 
	 
	 A_CustomFinale3 = TANK
	 A_CustomFinaleValue3 = 1  // 
	 
	 A_CustomFinale4 = PANIC
	 A_CustomFinaleValue4 = 3 // 
	 
	 A_CustomFinale5 = DELAY
	 A_CustomFinaleValue5 = 6 // 

         A_CustomFinale6 = TANK
	 A_CustomFinaleValue6 = 1
	 


	
	 
	 SpecialRespawnInterval = 20

	//-----------------------------------------------------
}

function OnBeginCustomFinaleStage( num, type )
{
      printl( "Beginning custom finale stage " + num + " of type " + type );
      MapScript.DirectorOptions.CommonLimit = num * 10 // increase commons by 10 linearly with stages
}