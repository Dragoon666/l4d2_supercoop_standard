local rt = getroottable();
if (!rt.rawin("MyRandomNumber") ){
rt.MyRandomNumber <- RandomInt(1,3);
}
//printl("RANDOM NUMBER IS "+rt.MyRandomNumber); //debug
	
	if (MyRandomNumber == 1)
	{
		//Msg("House rescue selected.\n")
		EntFire("house_rescue_relay","Trigger", "0")
	}

	if (MyRandomNumber == 2)
	{
		//Msg("Ravine rescue selected.\n")
		EntFire("ravine_rescue_relay","Trigger", "0")
	}

	if (MyRandomNumber == 3)
	{
		//Msg("Mountain rescue selected.\n")
		EntFire("mountain_rescue_relay","Trigger", "0")
	}