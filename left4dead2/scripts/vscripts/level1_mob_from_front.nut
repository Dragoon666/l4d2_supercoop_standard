//-----------------------------------------------------
//
// This script encourages the director to generate the
// mega-mobs from positions anywhere near the survivors.
//
//-----------------------------------------------------

DirectorOptions <-
{
	//-----------------------------------------------------
	// This is the variable that you have to set in order
	// to influence the direction of mob spawns.
	//-----------------------------------------------------
	PreferredMobDirection = SPAWN_IN_FRONT_OF_SURVIVORS

	// Disallows tank/witch
	DisallowThreatType = ZOMBIE_TANK

	// Causes a never ending panic attack. Must be a gauntlet.
	PanicForever = 1

	// Turn always wanderer on
	AlwaysAllowWanderers = 1

	// Set the number of infected that cannot be absorbed
	NumReservedWanderers = 10

	// More generous range for spawning infected makes it more
	// likely that we'll actually get our mob from the front
	ZombieSpawnRange = 2000


