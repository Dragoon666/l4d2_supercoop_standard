function CheckPlayerType()
{
    if (activator)
    {
        //Msg("Activator present\n");
        if (activator.IsPlayer())
        {
            //Msg("Activator is a player\n");
            if (activator.IsSurvivor())
            {
                //Msg("Activator is a survivor\n");
                if (!IsPlayerABot(activator)) 
                {
                    //Msg("Activator is not a player bot. Trggering fuel barrel explosion\n");
                    EntFire("fuel_barrel_relay", "Trigger" );
                }
            }
        }
    }
}