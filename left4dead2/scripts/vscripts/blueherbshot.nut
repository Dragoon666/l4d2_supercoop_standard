ResidentEvilAdre <-{};

function BigBlueHerb()
{
	if(!(activator in ResidentEvilAdre) && (activator.GetHealthBuffer() + activator.GetHealth()) > 70 )
	{
		local health = activator.GetHealth();
		local buffer = activator.GetHealthBuffer();
		local totalhealth = activator.GetHealth() + activator.GetHealthBuffer();
		
			activator.SetHealthBuffer(100 - health);
			activator.UseAdrenaline(15);
	}
	else if(!(activator in ResidentEvilAdre) && (activator.GetHealthBuffer() + activator.GetHealth()) < 70 )
	{
			activator.SetHealthBuffer(30 + activator.GetHealthBuffer());
			activator.UseAdrenaline(15);
	}
}