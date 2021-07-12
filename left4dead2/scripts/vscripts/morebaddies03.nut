Msg("Something doesn't feel right...");
local Dopts = DirectorScript.DirectorOptions; // get a reference to the options
Dopts.MaxSpecials <- 6;
Dopts.BoomerLimit <- 1;
Dopts.SmokerLimit <- 2;
Dopts.HunterLimit <- 3;
Dopts.ChargerLimit <- 1;
Dopts.SpitterLimit <- 1;
Dopts.JockeyLimit <- 1;
Dopts.CommonLimit <- 90;
Dopts.SpecialRespawnInterval <- 7.5;