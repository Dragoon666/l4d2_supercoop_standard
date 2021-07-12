Msg("Initiating Reserved Wanderers\n");

DirectorOptions <-
{
	// Turn always wanderer on
	AlwaysAllowWanderers = 1

	// Set the number of infected that cannot be absorbed
	NumReservedWanderers = 5

	// This turns off tanks and witches.
	ProhibitBosses = true
	
	ShouldAllowMobsWithTank = false
	
	BoomerLimit = 0
	SmokerLimit = 0
	HunterLimit = 0
	ChargerLimit = 0
	SpitterLimit = 0
	JockeyLimit = 0

}
