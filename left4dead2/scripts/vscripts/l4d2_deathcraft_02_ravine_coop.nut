Msg("l4d2_deathcraft_02_ravine_coop-------------------------------------------------------\n");

//死亡工艺II
DirectorOptions <-
{
	cm_MaxSpecials = 8
	DominatorLimit = 5

	//保险起见防止build up持续时间过长
	RelaxMinInterval = 180
	RelaxMaxInterval = 180
}
Convars.SetValue("sv_consistency","0")