Msg("Turning off director bosses!\n");

DirectorOptions <-
{
   ProhibitBosses = true
   DisallowThreatType = ZOMBIE_WITCH
   DisallowThreatType = ZOMBIE_TANK
   TankLimit = 0
   WitchLimit = 0
   // IgnoreNavThreatAreas = 1
   // cm_TankLimit = 0
   // cm_WitchLimit = 0 
   // The above three aren't necessary, but keep it here commented out anyway just in case.
}