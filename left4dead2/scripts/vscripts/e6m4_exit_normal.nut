DirectorOptions <-
{
	WitchLimit = 1
        SmokerLimit = 1
        JockeyLimit = 1
        BoomerLimit = 2
        HunterLimit = 1
        ChargerLimit = 1
	SpitterLimit = 2

	TankHitDamageModifierCoop = 0.66
	cm_SpecialRespawnInterval = 15
	SpecialInitialSpawnDelayMax = 15
}
function OnGameEvent_tank_spawn( params )
{
	local tankEnt = EntIndexToHScript(params.tankid);

	DoEntFire("!self", "addoutput", "health 2000", 0.1, tankEnt, tankEnt);
}