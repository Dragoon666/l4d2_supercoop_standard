function Lengua()

if(Convars.GetStr("cl_language") == "spanish")
		{
			EntFire( "spanish_hints", "Trigger");
			printl("Instructor en castellano");
		}
	else 
		{
			printl("English instructor");
		}