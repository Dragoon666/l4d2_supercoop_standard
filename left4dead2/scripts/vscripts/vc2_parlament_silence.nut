Msg("Initiating Reserved Wanderers\n");

DirectorOptions <-
{
	// Turn always wanderer on
	AlwaysAllowWanderers = 1

	// Set the number of infected that cannot be absorbed
	NumReservedWanderers = 5

	// This turns off tanks and witches.
	ProhibitBosses = false
	
	ShouldAllowMobsWithTank = false
	
	BoomerLimit = 0
	SmokerLimit = 1
	HunterLimit = 1
	ChargerLimit = 0
	SpitterLimit = 1
	JockeyLimit = 0

}
