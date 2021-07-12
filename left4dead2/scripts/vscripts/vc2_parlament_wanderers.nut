Msg("Initiating Reserved Wanderers\n");

DirectorOptions <-
{
	// Turn always wanderer on
	AlwaysAllowWanderers = 1

	// Set the number of infected that cannot be absorbed
	NumReservedWanderers = 5

	// This turns off tanks and witches.
	ProhibitBosses = true
	
	ShouldAllowMobsWithTank = true
	
	BoomerLimit = 1
	SmokerLimit = 1
	HunterLimit = 3
	ChargerLimit = 0
	SpitterLimit = 2
	JockeyLimit = 1

}
