ERROR <- -1
PANIC <- 0
TANK <- 1
DELAY <- 2
SCRIPTED <- 3 
 
DirectorOptions <-
{
	//-----------------------------------------------------
	 A_CustomFinale_StageCount = 8 // Number of stages. Used for calculating the Versus score.
 
	 A_CustomFinale1 = PANIC
	 A_CustomFinaleValue1 = 2   // Two panic waves.
 
	 A_CustomFinale2 = DELAY
	 A_CustomFinaleValue2 = 12  // Delay for twelve seconds in addition to stage delay.
 
	 A_CustomFinale3 = TANK
	 A_CustomFinaleValue3 = 3  // 3 tanks!
 
	 A_CustomFinale4 = DELAY
	 A_CustomFinaleValue4 = 12 // Wait some more.
 
	 A_CustomFinale5 = SCRIPTED
	 A_CustomFinaleValue5 = "my_scripted_stage.nut" // Run a custom scripted stage using a separate script.
 
	 A_CustomFinale6 = DELAY
	 A_CustomFinaleValue6 = 15 // Wait 15 seconds.
 
	 A_CustomFinale7 = TANK
	 A_CustomFinaleValue7 = 1  // One more tank.
 
	 A_CustomFinale8 = DELAY
	 A_CustomFinaleValue8 = 10 // Wait ten seconds ... rescue!
 
 
	//-----------------------------------------------------
 
	 CommonLimit = 10
	 SpecialRespawnInterval = 25
}
 
function OnBeginCustomFinaleStage( num, type ) // This function is run at the beginning of every stage.
{
      printl( "Beginning custom finale stage " + num + " of type " + type );
      MapScript.DirectorOptions.CommonLimit <- num * 10 // Increase commons by 10 linearly with stages.
}