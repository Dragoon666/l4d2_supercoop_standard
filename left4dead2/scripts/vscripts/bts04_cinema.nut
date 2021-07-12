//Четвертая карта, установка параметров директора(разрешаем танка и ведьму)
Msg("Run vscript: BTS Cinema\n");
local TANKCHANCE = 0;
local WITCHCHANCE = 0;
if(RandomInt(0,10)>4){
TANKCHANCE = 1;
}
if(RandomInt(0,20)>8){
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