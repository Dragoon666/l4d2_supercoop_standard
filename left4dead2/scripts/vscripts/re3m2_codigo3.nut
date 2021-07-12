EntFire( "boton_teclado1", "Kill" )
EntFire( "boton_teclado2", "Kill" )
EntFire( "boton_teclado4", "Kill" )


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
  	CommonLimit = 15
	PreferredMobDirection = SPAWN_NO_PREFERENCE
	ZombieSpawnRange = 1000
}



function OnGameEvent_player_say(params)
{
   if(params.text == "4312")
   {
      EntFire( "relay_codigo_si", "Trigger");
   }

   if(params.text != "4312")
   {
      EntFire( "relay_codigo_no", "Trigger", "0.5");
   }     
}