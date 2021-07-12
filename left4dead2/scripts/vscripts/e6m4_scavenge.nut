DirectorOptions <-
{
	WitchLimit = 2
        SmokerLimit = 2
        JockeyLimit = 1
        BoomerLimit = 1
        HunterLimit = 2
        ChargerLimit = 1
	SpitterLimit = 1
}
function OnGameEvent_tank_spawn( params )
{
	local tankEnt = EntIndexToHScript(params.tankid);

	DoEntFire("!self", "addoutput", "health 3200", 0.1, tankEnt, tankEnt);
}