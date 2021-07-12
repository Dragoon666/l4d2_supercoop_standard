Msg("Initiating FF Survival script..\n");

// Save the current time when we begin the script.
// Used for tracking the progress of the survivors (time_survived - initial_time)
start_time <- Time();

// Executed after the survivors are all killed/incapped
function OnGameEvent_round_end( params ) 
{
   // Stops milestone VO from playing after the Survivors die
	EntFire( "relay_kill_svmilestones" "Trigger" ); 

   // Failed before Silver (7:00)
	if( Time() < start_time + 420 )
   {
		EntFire( "sv_failedbronze_relay" "Trigger" );
		EntFire( "@director" "EndScript" );
   }
      
   // Failed after Silver (7:00) but before Gold (10:00)
	else if( Time() >= start_time + 420 && Time() < start_time + 600 )
   {
		EntFire( "sv_failedsilver_relay" "Trigger" );
		EntFire( "@director" "EndScript" );
   }
      
   // Failed after Gold (10:00)
	else if( Time() >= start_time + 600 && Time() < start_time + 1200 )
   {
		EntFire( "sv_failedgold_relay" "Trigger" );
		EntFire( "@director" "EndScript" );
   }
}

DirectorOptions <-
{
	PreferredMobDirection = SPAWN_LARGE_VOLUME
	PreferredSpecialDirection = SPAWN_LARGE_VOLUME
	ShouldConstrainLargeVolumeSpawn = false
	
	ZombieSpawnRange = 1800
}
