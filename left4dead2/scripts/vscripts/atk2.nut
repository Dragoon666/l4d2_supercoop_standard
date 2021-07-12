Msg("hard atk!! \n");

DirectorOptions <-
{
	ProhibitBosses = true	//禁止导演生成tank女巫
	ShouldAllowMobsWithTank=false
	
	CommonLimit = 30		//限制ss同时最多数量
	MobSpawnMinTime = 8		//ss刷出时间间隔
	MobSpawnMaxTime = 12
	MobMinSize = 20			//ss一波的数量
	MobMaxSize = 27			
	MobMaxPending = 20		//超出上述数量的排队ss数量
	SustainPeakMinTime = 9	//ss可以保持最大数量的时间
	SustainPeakMaxTime = 12

	RelaxMaxFlowTravel=1	//生还者前进1米后进攻
	IntensityRelaxThreshold = 0.5	
	//开启ss停火期所需要的人类全体健康值峰值

	RelaxMinInterval = 2	//ss停火期时长
	RelaxMaxInterval = 5

	MaxSpecials = 4				//4特共存
	SpecialRespawnInterval = 5	//5秒刷出
	DominatorLimit = 2			//限制最大2控


}
