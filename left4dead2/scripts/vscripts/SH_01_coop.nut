Msg("SH_01_coop-------------------------------------------------------\n");

//寂静岭：另一边的生活
DirectorOptions <-
{
	cm_MaxSpecials = 6
	DominatorLimit = 3
	
	ZombieTankHealth=RandomInt(6000,12000)

	RelaxMinInterval = 120
	RelaxMaxInterval = 120 //Relax时间设置为2min，因为中间有个机关需要开启
}


Convars.SetValue("z_witch_always_kills","0")

Convars.SetValue("min_time_spawn_tank",9999)
Convars.SetValue("max_time_spawn_tank",9999)