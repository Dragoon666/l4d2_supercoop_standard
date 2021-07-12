Msg("Preparing to own the Survivors");
local Dopts = DirectorScript.DirectorOptions; // get a reference to the options
Dopts.MaxSpecials <- 3;
Dopts.BoomerLimit <- 1;
Dopts.SmokerLimit <- 1;
Dopts.HunterLimit <- 1;
Dopts.ChargerLimit <- 1;
Dopts.SpitterLimit <- 1;
Dopts.JockeyLimit <- 1;
Dopts.CommonLimit <- 80;
Dopts.SpecialRespawnInterval <- 10.0;