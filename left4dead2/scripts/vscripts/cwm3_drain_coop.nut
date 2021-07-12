Msg("cwm3_drain_coop-------------------------------------------------------\n");

//逃生
DirectorOptions <-
{
	cm_MaxSpecials = 8
	DominatorLimit = 5

	//保险起见防止build up持续时间过长
	RelaxMinInterval = 180
	RelaxMaxInterval = 180
}