Msg("qe2_ep3_coop-------------------------------------------------------\n");

//伦理问题：阿尔法测试
DirectorOptions <-
{
	cm_MaxSpecials = 8
	DominatorLimit = 5

	//保险起见防止build up持续时间过长
	RelaxMinInterval = 180
	RelaxMaxInterval = 180
}