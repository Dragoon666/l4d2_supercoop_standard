function QuietMob() {
Msg("Quieting Mob for Tank Battle\n");
Dopts <- DirectorScript.DirectorOptions
Dopts.ShouldAllowMobsWithTank <- False
Dopts.TankLimit <- 2
Dopts.CommonLimit <- 0
}
