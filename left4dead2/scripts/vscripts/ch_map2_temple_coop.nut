Msg("l4d_zero02_complex_coop-------------------------------------------------------\n");

//绝对零度
DirectorOptions <-
{
	cm_MaxSpecials = 8
	DominatorLimit = 5

	//保险起见防止build up持续时间过长
	RelaxMinInterval = 180
	RelaxMaxInterval = 180
}