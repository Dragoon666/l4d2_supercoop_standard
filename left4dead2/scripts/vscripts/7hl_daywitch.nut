Skyboxes <- [
   "2"
]

worldspawn <- Entities.FindByClassname (null, "worldspawn");
local i = RandomInt(0,Skyboxes.len()-1);
printl("Skybox is "+Skyboxes[i]);
printl( worldspawn.__KeyValueFromString("timeofday",Skyboxes[i]) );

DirectorOptions <-
{
	ZombieSpawnInFog = true
}