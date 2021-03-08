TeleSource <- Entities.FindByName(null, "tele_source_out");
TeleDest <- Entities.FindByName(null, "tele_dest_out");

function Teleport(radius)
{
	local entity = null;
	
	while( entity = Entities.FindInSphere(entity, TeleSource.GetOrigin(), radius))
	{
		if((entity.GetClassname() == "player") && IsPlayerABot(entity) 
			&& entity.IsSurvivor())
		{
			entity.SetOrigin(TeleDest.GetOrigin());
		}
	}
}