//Пятая карта, установка параметров директора(разрешаем ведьму, запрещаем танка)
Msg("Run vscript: BTS Church\n");
local WITCHCHANCE = 0;
if(RandomInt(0,10)>4){
WITCHCHANCE = 1;
}
DirectorOptions <-
{
	ProhibitBosses = false
	TankLimit = 0
	WitchLimit = WITCHCHANCE
	AlwaysAllowWanderers = true
	ZombieSpawnInFog = true
}