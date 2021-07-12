Msg("This place is scary");
local Dopts = DirectorScript.DirectorOptions; // get a reference to the options
Dopts.MaxSpecials <- 2;
Dopts.BoomerLimit <- 1;
Dopts.SmokerLimit <- 1;
Dopts.HunterLimit <- 1;
Dopts.ChargerLimit <- 1;
Dopts.SpitterLimit <- 1;
Dopts.JockeyLimit <- 0;
Dopts.CommonLimit <- 82;
Dopts.SpecialRespawnInterval <- 20.0;