DirectorOptions <-
{
	WitchLimit = 0
        SmokerLimit = 1
        JockeyLimit = 1
        BoomerLimit = 1
        HunterLimit = 1
        ChargerLimit = 0
	SpitterLimit = 1

	TankHitDamageModifierCoop = 0.55
	cm_SpecialRespawnInterval = 20
	SpecialInitialSpawnDelayMax = 20
}
function OnGameEvent_tank_spawn( params )
{
	local tankEnt = EntIndexToHScript(params.tankid);

	DoEntFire("!self", "addoutput", "health 800", 0.1, tankEnt, tankEnt);
}