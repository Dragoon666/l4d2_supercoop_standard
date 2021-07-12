//Вторая карта, установка параметров директора(разрешаем танка и ведьму)
Msg("Run vscript: BTS Station\n");
local TANKCHANCE = 0;
local WITCHCHANCE = 0;
if(RandomInt(0,10)>7){
TANKCHANCE = 1;
}
if(RandomInt(0,20)<6){
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