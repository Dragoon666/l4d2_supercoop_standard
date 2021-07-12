//-----------------------------------------------------
//
//
//-----------------------------------------------------
Msg("Initiating c8m5_rooftop_finale script\n");

//-----------------------------------------------------
ERROR		<- -1
PANIC 		<- 0
TANK 		<- 1
DELAY 		<- 2
SCRIPTED 	<- 3
//-----------------------------------------------------

DirectorOptions <-
{	
	 
	A_CustomFinale_StageCount = 8
	 
	A_CustomFinale1 		= PANIC
	A_CustomFinaleValue1 	= 2	
	A_CustomFinale2 		= DELAY
	A_CustomFinaleValue2 	= StageDelay	
	A_CustomFinale3 		= TANK
	A_CustomFinaleValue3 	= 1
	A_CustomFinale4 		= DELAY
	A_CustomFinaleValue4 	= StageDelay	
	A_CustomFinale5 		= PANIC
	A_CustomFinaleValue5 	= 2	
	A_CustomFinale6 		= DELAY
	A_CustomFinaleValue6 	= StageDelay		
	A_CustomFinale7 		= TANK
	A_CustomFinaleValue7 	= 1
	A_CustomFinale8 		= DELAY
	A_CustomFinaleValue8 	= PreEscapeDelay
	 
	 
	TankLimit = 1
	WitchLimit = 0
	CommonLimit = 15	
	HordeEscapeCommonLimit = 10	
	EscapeSpawnTanks = false
	PreferredMobDirection = SPAWN_NO_PREFERENCE
	PreferredSpecialDirection = SPAWN_NO_PREFERENCE
	SpecialRespawnInterval = 5
	MobMaxPending = 20
	ZombieSpawnRange = 2200
	ZombieSpawnInFog = true

}