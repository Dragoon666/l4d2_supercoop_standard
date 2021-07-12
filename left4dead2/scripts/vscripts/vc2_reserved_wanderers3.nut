Msg("Initiating Reserved Wanderers\n");

DirectorOptions <-
{
	// Turn always wanderer on
	AlwaysAllowWanderers = 1

	// Set the number of infected that cannot be absorbed
	NumReservedWanderers = 6

	// This turns off tanks and witches.
	ProhibitBosses = false
	
	ShouldAllowMobsWithTank = true
	
	BoomerLimit = 2
	SmokerLimit = 3
	HunterLimit = 3
	ChargerLimit = 2
	SpitterLimit = 1
	JockeyLimit = 2

}
