//Первая карта, установка параметров директора(разрешаем танка и ведьму)
Msg("Run vscript: BTS Forest part 2\n");
local TANKCHANCE = 0;
local WITCHCHANCE = 0;
if(RandomInt(0,20)>18){
TANKCHANCE = 1;
}
if(RandomInt(10,20)<12){
WITCHCHANCE = 1;
}
DirectorOptions <-
{
	ProhibitBosses = false
	TankLimit = TANKCHANCE
	WitchLimit = WITCHCHANCE
	AlwaysAllowWanderers = true
	ZombieSpawnInFog = true
}