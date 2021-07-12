Msg("**Finale Stage 1: get the cans!**\n")

DirectorOptions <-
{
	MobMinSize = 10
	MobMaxSize = 15
        MobMaxPending = 10

	BoomerLimit = 1
	SmokerLimit = 2
	HunterLimit = 2
	SpitterLimit = 1
	JockeyLimit = 2
	ChargerLimit = 2
        
	MinimumStageTime = 15

	RelaxMinInterval = 3
	RelaxMaxInterval = 6
	MobSpawnMinTime = 5
	MobSpawnMaxTime = 10
	SustainPeakMinTime = 25
	SustainPeakMaxTime = 30
	IntensityRelaxThreshold = 0.99
     
	PreferredMobDirection = SPAWN_LARGE_VOLUME

	CommonLimit = 30
	BileMobSize = 30
	ZombieSpawnRange = 1500
}

Director.PlayMegaMobWarningSounds()
Director.ResetMobTimer()

//-------------------------------------------------

NumCansPoured <- 0

// Number of cans needed
if ( Director.IsSinglePlayerGame() ) {
	NumCansNeeded <- 5
}
else {
	NumCansNeeded <- 8
}


// When a can is poured
function CanPoured()
{
	NumCansPoured++;

	Msg("Poured: " + NumCansPoured + "\n");

	if ( NumCansPoured == NumCansNeeded )
    	{
		Msg("Needed: " + NumCansNeeded + "\n");
		//EntFire("!activator", "SpeakResponseConcept", "UF4TurnOnPowerNag");
		EntFire("generator_relay_last", "trigger");
    	}
}

// End the stage once the generator is filled
function EndStage()
{
        Msg("**Stage 1 ended**\n") 
        EntFire( "director", "EndCustomScriptedStage" )
}