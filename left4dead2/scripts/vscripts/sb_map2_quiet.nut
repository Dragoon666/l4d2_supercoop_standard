Msg("Quieting director\n");

DirectorOptions <-
{
	ProhibitBosses = true
	SpecialRespawnInterval = 999999
	CommonLimit = 0
	MobSpawnMinTime = 99999
	MobSpawnMaxTime = 99999
}

Director.ResetMobTimer()