//Первая карта, установка параметров директора(запрещаем танка и ведьму)
Msg("Run vscript: BTS Forest part 1\n");
DirectorOptions <-
{
	ProhibitBosses = true
	TankLimit = 0
	WitchLimit = 0
	AlwaysAllowWanderers = true
	ZombieSpawnInFog = true
}