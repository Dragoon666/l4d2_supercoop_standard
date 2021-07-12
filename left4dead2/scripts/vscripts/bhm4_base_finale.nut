Msg("Initiating Primary Finale script\n");

//-----------------------------------------------------

ERROR 		<- -1
PANIC 		<- 0
TANK 		<- 1
DELAY 		<- 2
ONSLAUGHT 	<- 3

//-----------------------------------------------------

SharedOptions <-
{
	A_CustomFinale_StageCount = 9
	
 	A_CustomFinale1 = ONSLAUGHT
	A_CustomFinaleValue1 = "bhm4_base_onslaught"
	A_CustomFinaleMusic1 = "Event.FinaleStart"
		
		
 	A_CustomFinale2 = PANIC
	A_CustomFinaleValue2 = 1

	A_CustomFinale3 = DELAY
	A_CustomFinaleValue3 = 15

	A_CustomFinale4 = TANK
	A_CustomFinaleValue4 = 2
	
	A_CustomFinale5 = DELAY
	A_CustomFinaleValue5 = 15

	A_CustomFinale6 = PANIC
	A_CustomFinaleValue6 = 2

	A_CustomFinale7 = DELAY
	A_CustomFinaleValue7 = 10

	A_CustomFinale8 = TANK
	A_CustomFinaleValue8 = 2
	A_CustomFinaleMusic8 = "Event.FinaleWave4"
		
	A_CustomFinale9 = DELAY
	A_CustomFinaleValue9 = RandomInt( 5, 10 )
	
	PreferredMobDirection = SPAWN_LARGE_VOLUME
	PreferredSpecialDirection = SPAWN_LARGE_VOLUME
	ShouldConstrainLargeVolumeSpawn = false

	ZombieSpawnRange = 2048
	EscapeSpawnTanks = true
	HordeEscapeCommonLimit = 60	
	CustomTankKiteDistance = 1500
	
	SpecialRespawnInterval = 20
	
	MusicDynamicMobSpawnSize = 8
	MusicDynamicMobStopSize = 2
	MusicDynamicMobScanStopSize = 1

} 

InitialPanicOptions <-
{
	ShouldConstrainLargeVolumeSpawn = true
}


PanicOptions <-
	{
		//=====================================================
		//Common Infected
		//=====================================================
		CommonLimit = 45
		CommonLimitMax = 75

		GauntletMovementThreshold = 500.0
		GauntletMovementTimerLength = 5.0
		GauntletMovementBonus = 2.0
		GauntletMovementBonusMax = 30.0

		BridgeSpan = 5600

		//=====================================================
		//Mob Attack Values
		//=====================================================
	
		ZombieSpawnRange = 1600
		LockTempo = 1
	
		MobSpawnSize = 35
		MobSpawnSizeMin = 30
		MobSpawnSizeMax = 75
		MobMinSize = 30
		MobMaxSize = 75
		MobMaxPending = 45
		MobRechargeRate  = 0.35
	
		MobSpawnMinTime = 1
		MobSpawnMaxTime = 2
	
		BileMobSize = 30
	
		minSpeed = 50
		maxSpeed = 200
	
		SustainPeakMinTime = 5
		SustainPeakMaxTime = 10
	
		SpecialRespawnInterval = 55
		IntensityRelaxThreshold = 0.90
	
		RelaxMinInterval = 1
		RelaxMaxInterval = 5
		RelaxMaxFlowTravel = 50

		speedPenaltyZAdds = 15

		function RecalculateLimits()
		{
			//Increase common limit based on progress  
			local progressPct = ( Director.GetFurthestSurvivorFlow() / BridgeSpan )
	    
			if ( progressPct < 0.0 ) progressPct = 0.0;
			if ( progressPct > 1.0 ) progressPct = 1.0;
	    
			MobSpawnSize = MobSpawnSizeMin + progressPct * ( MobSpawnSizeMax - MobSpawnSizeMin )

			//Increase common limit based on speed   
			local speedPct = ( Director.GetAveragedSurvivorSpeed() - minSpeed ) / ( maxSpeed - minSpeed );

			if ( speedPct < 0.0 ) speedPct = 0.0;
			if ( speedPct > 1.0 ) speedPct = 1.0;

			MobSpawnSize = MobSpawnSize + speedPct * ( speedPenaltyZAdds );
	    
			CommonLimit = MobSpawnSize * 1.5
	    
			if ( CommonLimit > CommonLimitMax ) CommonLimit = CommonLimitMax;
		}
	
	}

TankOptions <-
{
	TankLimit = 2
	ShouldAllowSpecialsWithTank = true
	SpecialRespawnInterval = 30
}


DirectorOptions <- clone SharedOptions
{
}

//-----------------------------------------------------------------------------

function AddTableToTable( dest, src )
{
	foreach( key, val in src )
	{
		dest[key] <- val
	}
}

//-----------------------------------------------------------------------------

function OnBeginCustomFinaleStage( num, type )
{
	if ( developer() > 0 )
	{
		printl("========================================================");
		printl( "Beginning custom finale stage " + num + " of type " + type );
	}

	local waveOptions = null
	if ( num == 1 )
	{
		waveOptions = InitialPanicOptions
	}
	else if ( type == PANIC )
	{
		waveOptions = PanicOptions
		if ( "MegaMobMinSize" in PanicOptions )
		{
			waveOptions.MegaMobSize <- RandomInt( PanicOptions.MegaMobMinSize, MegaMobMaxSize )
		}
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

	//---------------------------------

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
		printl("========================================================");
	}
	
	EntFire("director","endcustomscriptedstage","",60)
}


if ( Director.GetGameMode() == "versus" )
{
    DirectorOptions.IntensityRelaxThreshold <- 0.8;
}

