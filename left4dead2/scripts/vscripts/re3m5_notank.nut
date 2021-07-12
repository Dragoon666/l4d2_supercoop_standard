Msg("**SCRIPT AGARRAR**\n")

DirectorOptions <-
{
    ProhibitBosses = true	
	BoomerLimit = 1
  	TankLimit = 1
  	WitchLimit = 1
  	SmokerLimit = 1
	HunterLimit = 1
	SpitterLimit = 1
	JockeyLimit = 1
  	ChargerLimit = 1
  	CommonLimit = 20
}

function g_ModeScript::CanPickupObject(object)
{
	if(object.GetName() == "caja_1"
		|| object.GetName() == "caja_2"
		|| object.GetName() == "caja_3"
		|| object.GetName() == "libro"
		|| object.GetName() == "vjolt")
		return true;
		
		
	return false;
}