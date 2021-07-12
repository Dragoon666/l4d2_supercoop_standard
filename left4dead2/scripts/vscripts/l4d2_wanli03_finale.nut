
Msg("----------------------FINALE SCRIPT------------------\n")
//-----------------------------------------------------
ERROR		<- -1
PANIC		<- 0
TANK		<- 1
DELAY		<- 2
ONSLAUGHT	<- 3
//-----------------------------------------------------

if ( Director.GetGameMode() == "versus" )
{
PendingWaitAdvance <- true
QueuedDelayAdvances <- 0
// Tracking current finale states
CurrentFinaleStageNumber <- ERROR
CurrentFinaleStageType <- ERROR

SharedOptions <-
{	
	 
	A_CustomFinale_StageCount = 14
	 
	// PHASE 1
	A_CustomFinale1 = ONSLAUGHT
	A_CustomFinaleValue1 = "l4d2_wanli03_delay"
	A_CustomFinale2 = DELAY
	A_CustomFinaleValue2 = 9999

	//phase 2
	A_CustomFinale3 = PANIC
	A_CustomFinaleValue3 = "l4d2_wanli03_delay"
	A_CustomFinale4 = DELAY
	A_CustomFinaleValue4 = 9999

	//phase 3
	A_CustomFinale5 = TANK
	A_CustomFinaleValue5 = 1
	A_CustomFinale6 = DELAY
	A_CustomFinaleValue6 = 9999

	// PHASE 4
	A_CustomFinale7 = ONSLAUGHT
	A_CustomFinaleValue7 = "l4d2_wanli03_delay"
	A_CustomFinale8 = DELAY
	A_CustomFinaleValue8 = 9999

	// PHASE 5
	A_CustomFinale9 = PANIC
	A_CustomFinaleValue9 = "l4d2_wanli03_delay"
	A_CustomFinale10 = DELAY
	A_CustomFinaleValue10 = 9999
	// PHASE 6
	A_CustomFinale11 = TANK
	A_CustomFinaleValue11 = 1 
	A_CustomFinale12 = DELAY
	A_CustomFinaleValue12 = 9999	 
	
	
	// PHASE 7
	A_CustomFinale13 = PANIC
	A_CustomFinaleValue13 = "l4d2_wanli03_delay"	 	 		 
	A_CustomFinale14 = DELAY
	A_CustomFinaleValue14 = 9999

        // PHASE 8
	A_CustomFinale15 = ONSLAUGHT
	A_CustomFinaleValue15 = "l4d2_wanli03_delay"	 	 		 
	A_CustomFinale16 = DELAY
	A_CustomFinaleValue16 = 2
	
	//----------------------------------------------
	PreferredMobDirection = SPAWN_LARGE_VOLUME
	PreferredSpecialDirection = SPAWN_LARGE_VOLUME 

	BoomerLimit = 1
	SmokerLimit = 1
	HunterLimit = 1
	SpitterLimit = 1
	JockeyLimit = 1
	ChargerLimit = 1

	MusicDynamicMobSpawnSize = 8
	MusicDynamicMobStopSize = 2
	MusicDynamicMobScanStopSize = 1
 
	TankLimit = 3
	WitchLimit = 0
	CommonLimit = 30	
	HordeEscapeCommonLimit = 15	
	EscapeSpawnTanks = true
	//SpecialRespawnInterval = 80

}

}
else if ( Director.GetGameMode() == "coop" )
{

SharedOptions <-
{
 	A_CustomFinale1 = ONSLAUGHT
	A_CustomFinaleValue1 = ""

	A_CustomFinale2 = PANIC
	A_CustomFinaleValue2 = 1

	A_CustomFinale3 = ONSLAUGHT
	A_CustomFinaleValue3 = "l4d2_wanli03_delay"
        
	A_CustomFinale4 = PANIC
	A_CustomFinaleValue4 = 1

	A_CustomFinale5 = ONSLAUGHT
	A_CustomFinaleValue5 = "l4d2_wanli03_delay"

	A_CustomFinale6 = TANK
	A_CustomFinaleValue6 = 1

	A_CustomFinale7 = ONSLAUGHT
	A_CustomFinaleValue7 = "l4d2_wanli03_delay"
 
 	A_CustomFinale8 = PANIC
	A_CustomFinaleValue8 = 1

	A_CustomFinale9 = ONSLAUGHT
	A_CustomFinaleValue9 = "l4d2_wanli03_delay"
 
 	A_CustomFinale10 = PANIC
	A_CustomFinaleValue10 = 1

	A_CustomFinale11 = ONSLAUGHT
	A_CustomFinaleValue11 = "l4d2_wanli03_delay"

	A_CustomFinale12 = PANIC
	A_CustomFinaleValue12 = 1
        
 	A_CustomFinale13 = ONSLAUGHT
	A_CustomFinaleValue13 = "l4d2_wanli03_delay"
        
	A_CustomFinale14 = TANK
	A_CustomFinaleValue14 = 1   
        
 	A_CustomFinale15 = ONSLAUGHT
	A_CustomFinaleValue15 = "l4d2_wanli03_delay"
        
	A_CustomFinale16 = PANIC
	A_CustomFinaleValue16 = 1  
                  
 	A_CustomFinale17 = ONSLAUGHT
	A_CustomFinaleValue17 = "l4d2_wanli03_delay"    
                       
 	A_CustomFinale18 = PANIC
	A_CustomFinaleValue18 = 1  
	
 	A_CustomFinale19 = ONSLAUGHT
	A_CustomFinaleValue19 = "l4d2_wanli03_delay"
        
	A_CustomFinale20 = PANIC
	A_CustomFinaleValue20 = 1   
        
 	A_CustomFinale21 = ONSLAUGHT
	A_CustomFinaleValue21 = "l4d2_wanli03_delay"
        
	A_CustomFinale22 = TANK
	A_CustomFinaleValue22 = 1  
                  
 	A_CustomFinale23 = ONSLAUGHT
	A_CustomFinaleValue23 = "l4d2_wanli03_delay"    
                       
 	A_CustomFinale24 = PANIC
	A_CustomFinaleValue24 = 1
															
 	A_CustomFinale25 = ONSLAUGHT
	A_CustomFinaleValue25 = "l4d2_wanli03_delay"
        
	A_CustomFinale26 = PANIC
	A_CustomFinaleValue26 = 1   
        
 	A_CustomFinale27 = ONSLAUGHT
	A_CustomFinaleValue27 = "l4d2_wanli03_delay"
        
	A_CustomFinale28 = PANIC
	A_CustomFinaleValue28 = 1  
                  
 	A_CustomFinale29 = ONSLAUGHT
	A_CustomFinaleValue29 = "l4d2_wanli03_delay"    
                       
 	A_CustomFinale30 = PANIC
	A_CustomFinaleValue30 = 1

 	A_CustomFinale31 = ONSLAUGHT
	A_CustomFinaleValue31 = "l4d2_wanli03_delay"   
                      
	//-----------------------------------------------------

	PreferredMobDirection = SPAWN_LARGE_VOLUME
	PreferredSpecialDirection = SPAWN_LARGE_VOLUME
        
//	BoomerLimit = 1
//	SmokerLimit = 1
//	HunterLimit = 1
//	SpitterLimit = 1
//	JockeyLimit = 1
//	ChargerLimit = 1

	ProhibitBosses = true
	ZombieSpawnRange = 3000
	MobRechargeRate = 0.5
	HordeEscapeCommonLimit = 15
	BileMobSize = 15
	
	MusicDynamicMobSpawnSize = 8
	MusicDynamicMobStopSize = 2
	MusicDynamicMobScanStopSize = 1
} 

}

InitialOnslaughtOptions <-
{
    LockTempo = 0
	IntensityRelaxThreshold = 1.1
	RelaxMinInterval = 2
	RelaxMaxInterval = 4
	SustainPeakMinTime = 25
	SustainPeakMaxTime = 30
	
	MobSpawnMinTime = 4
	MobSpawnMaxTime = 8
	MobMinSize = 4
	MobMaxSize = 8
	CommonLimit = 5
	
	SpecialRespawnInterval = 75
}

PanicOptions <-
{

	MegaMobSize = 25
	MegaMobMinSize = 22
	MegaMobMaxSize = 44
	
	CommonLimit = 15
	
	SpecialRespawnInterval = 45
}

TankOptions <-
{
	ShouldAllowMobsWithTank = true
	ShouldAllowSpecialsWithTank = true

	MobSpawnMinTime = 10
	MobSpawnMaxTime = 20
	MobMinSize = 3
	MobMaxSize = 5

	CommonLimit = 7
	
	SpecialRespawnInterval = 60
}


DirectorOptions <- clone SharedOptions
{
}


//-----------------------------------------------------



// duration of delay stage.
DelayMin <- 10
DelayMax <- 20


// Once the delay is aborted, amount of time before it progresses to next stage.
AbortDelayMin <- 1
AbortDelayMax <- 3

if ( Director.GetGameMode() == "coop" )
{
// number of ice melted needed to escape.
IceMeltedNeeded <- 7
// Number of touches and/or pours allowed before a delay is aborted.
DelayPourThreshold <- 1
DelayTouchedOrPouredThreshold <- 2
GimmeThreshold <- 4


// console overrides
if ( Director.IsPlayingOnConsole() )
{
	DelayMin <- 20
	DelayMax <- 30
	
	// Number of touches and/or pours allowed before a delay is aborted.
	DelayPourThreshold <- 2
	DelayTouchedOrPouredThreshold <- 4
	
	TankOptions.ShouldAllowSpecialsWithTank = false
	
}

}
//-----------------------------------------------------
//      INIT
//-----------------------------------------------------

FireworksTouched <- 0
IcesMelted <- 0

if ( Director.GetGameMode() == "coop" )
{
DelayTouchedOrPoured <- 0
DelayPoured <- 0
NavMesh.UnblockRescueVehicleNav()
}

EntFire( "timer_delay_end", "LowerRandomBound", DelayMin )
EntFire( "timer_delay_end", "UpperRandomBound", DelayMax )
EntFire( "timer_delay_abort", "LowerRandomBound", AbortDelayMin )
EntFire( "timer_delay_abort", "UpperRandomBound", AbortDelayMax )


function AbortDelay(){}
function EndDelay(){}



//-----------------------------------------------------

function FireworkTouched()
{

    FireworksTouched++
    Msg(" Touched: " + FireworksTouched + "\n")
    if ( Director.GetGameMode() == "coop" )
{
    EvalIcesMeltedOrTouched()  
}  
}
 
if ( Director.GetGameMode() == "coop" )
{ 
function IceMelted()
{	
    IcesMelted++
    DelayPoured++
    Msg(" IcesMelted: " + IcesMelted + "\n")   

    if ( IcesMelted == IceMeltedNeeded )
    {
        Msg(" needed: " + IceMeltedNeeded + "\n") 
        EntFire( "escape_begin_relay", "trigger" )
    }

    EvalIcesMeltedOrTouched()
}

function EvalIcesMeltedOrTouched()
{
    TouchedOrPoured <- IcesMelted + FireworksTouched
    Msg(" Burned or touched: " + TouchedOrPoured + "\n")

    DelayTouchedOrPoured++
    Msg(" DelayTouchedOrBurned: " + DelayTouchedOrPoured + "\n")
    Msg(" DelayBurned: " + DelayPoured + "\n")
    
    if (( DelayTouchedOrPoured >= DelayTouchedOrPouredThreshold ) || ( DelayPoured >= DelayPourThreshold ))
    {
        AbortDelay()
    }
    
    switch( TouchedOrPoured )
    {
        case GimmeThreshold:
            EntFire( "@director", "EndCustomScriptedStage" )
            break
    }
}

}
else if ( Director.GetGameMode() == "versus" )
{
function IceMelted()
{
    printl( "*!* IceMelted finale stage " + CurrentFinaleStageNumber + " of type " +CurrentFinaleStageType );
	printl( "*!* PendingWaitAdvance " + PendingWaitAdvance + ", QueuedDelayAdvances " + QueuedDelayAdvances );
	
	
	IcesMelted++
	
	
	local ImmediateAdvances = 0
	
	if ( IcesMelted == 1)
	{
		if ( CurrentFinaleStageNumber ==  2 )
		{
		QueuedDelayAdvances++
		ImmediateAdvances = 1
		}
		else if (CurrentFinaleStageNumber ==  1 )
		{
		QueuedDelayAdvances++
		ImmediateAdvances = 2
		}
	}
	else if ( IcesMelted == 2)
	{
		if ( CurrentFinaleStageNumber ==  4 )
		{
		QueuedDelayAdvances++
		ImmediateAdvances = 1
		}
		else if (CurrentFinaleStageNumber ==  3 )
		{
		QueuedDelayAdvances++
		ImmediateAdvances = 2
		}
	}
	else if ( IcesMelted == 3)
	{
		if ( CurrentFinaleStageNumber ==  6 )
		{
		QueuedDelayAdvances++
		ImmediateAdvances = 1
		}
		else if (CurrentFinaleStageNumber ==  5 )
		{
		QueuedDelayAdvances++
		ImmediateAdvances = 2
		}
	}
	else if ( IcesMelted == 4)
	{
		if ( CurrentFinaleStageNumber ==  8 )
		{
		QueuedDelayAdvances++
		ImmediateAdvances = 1
		}
		else if (CurrentFinaleStageNumber ==  7 )
		{
		QueuedDelayAdvances++
		ImmediateAdvances = 2
		}
	}
	else if ( IcesMelted == 5)
	{
		if ( CurrentFinaleStageNumber ==  10 )
		{
		QueuedDelayAdvances++
		ImmediateAdvances = 1
		}
		else if (CurrentFinaleStageNumber ==  9 )
		{
		QueuedDelayAdvances++
		ImmediateAdvances = 2
		}
	}
	else if ( IcesMelted == 6)
	{
		if ( CurrentFinaleStageNumber ==  12 )
		{
		QueuedDelayAdvances++
		ImmediateAdvances = 1
		}
		else if (CurrentFinaleStageNumber ==  11 )
		{
		QueuedDelayAdvances++
		ImmediateAdvances = 2
		}
	}
	else if ( IcesMelted == 7)
	{
		if ( CurrentFinaleStageNumber ==  14 )
		{
		QueuedDelayAdvances++
		ImmediateAdvances = 3
		}
		else if (CurrentFinaleStageNumber ==  13 )
		{
		QueuedDelayAdvances++
		ImmediateAdvances = 3
		}
	}
	else if ( CurrentFinaleStageNumber == -1 || CurrentFinaleStageNumber == 0 )
	{
		QueuedDelayAdvances++
		ImmediateAdvances = 0
	}
	
	
	if ( ImmediateAdvances > 0 )
	{	
		EntFire( "rescueboat_triggerfinale", "Enable" )
		
		
		if ( ImmediateAdvances == 1 )
		{
			printl( "*!* IceMelted Advancing State 1 IceCount:" + IcesMelted );
			EntFire( "rescueboat_triggerfinale", "AdvanceFinaleState" )
			AbortDelay()
			QueuedDelayAdvances--
		}
		if ( ImmediateAdvances == 2 )
		{
			printl( "*!* IceMelted Advancing State 2 IceCount:" + IcesMelted );
			EntFire( "rescueboat_triggerfinale", "AdvanceFinaleState" )
			EntFire( "rescueboat_triggerfinale", "AdvanceFinaleState" )
			AbortDelay()
			QueuedDelayAdvances--
		}
		else if ( ImmediateAdvances == 3 )
		{
			EntFire( "rescueboat_triggerfinale", "AdvanceFinaleState" )
			EntFire( "escape_begin_relay", "trigger" )
			AbortDelay()	
		}

		
		EntFire( "rescueboat_triggerfinale", "Disable" )
		
		PendingWaitAdvance = true
	}

	
}


}


//-----------------------------------------------------

if ( Director.GetGameMode() == "coop" )
{
function AddTableToTable( dest, src )
{
	foreach( key, val in src )
	{
		dest[key] <- val
	}
}

function OnBeginCustomFinaleStage( num, type )
{
	printl( "Beginning custom finale stage " + num + " of type " + type );
	
	local waveOptions = null
	if ( num == 1 )
	{
		waveOptions = InitialOnslaughtOptions
	}
	else if ( type == PANIC )
	{
		waveOptions = PanicOptions
		waveOptions.MegaMobSize = PanicOptions.MegaMobMinSize + rand()%( PanicOptions.MegaMobMaxSize - PanicOptions.MegaMobMinSize )
		
		Msg("*************************" + waveOptions.MegaMobSize + "\n")
		
	}
	else if ( type == TANK )
	{
		waveOptions = TankOptions
	}
	
	//---------------------------------


	MapScript.DirectorOptions.clear()
	

	AddTableToTable( MapScript.DirectorOptions, SharedOptions );

	if ( waveOptions != null )
	{
		AddTableToTable( MapScript.DirectorOptions, waveOptions );
	}
	
	
	Director.ResetMobTimer()
	
	if ( developer() > 0 )
	{
		Msg( "\n*****\nMapScript.DirectorOptions:\n" );
		foreach( key, value in MapScript.DirectorOptions )
		{
			Msg( "    " + key + " = " + value + "\n" );
		}

		if ( LocalScript.rawin( "DirectorOptions" ) )
		{
			Msg( "\n*****\nLocalScript.DirectorOptions:\n" );
			foreach( key, value in LocalScript.DirectorOptions )
			{
				Msg( "    " + key + " = " + value + "\n" );
			}
		}
	}
}

}
else if ( Director.GetGameMode() == "versus" )
{
function OnBeginCustomFinaleStage( num, type )
{
	printl( "*!* Beginning custom finale stage " + num + " of type " + type );
	printl( "*!* PendingWaitAdvance " + PendingWaitAdvance + ", QueuedDelayAdvances " + QueuedDelayAdvances );
	
	// Store off the state... 
	CurrentFinaleStageNumber = num
	CurrentFinaleStageType = type
	
	// Acknowledge the state advance
	PendingWaitAdvance = false

	
}
}

//-----------------------------------------------------




