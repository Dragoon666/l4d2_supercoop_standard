Msg("attack start\n");

DirectorOptions <-
{
	ProhibitBosses = true	//不允许生成tank女巫
	
	CommonLimit = 40		//限制ss同时最多数量
	MobSpawnMinTime = 12		//ss刷出时间间隔
	MobSpawnMaxTime = 20
	MobMinSize = 8			//ss一波的数量
	MobMaxSize = 32			
	MobMaxPending = 10		//超出上述数量的排队ss数量

	RelaxMaxFlowTravel=1
	SustainPeakMinTime = 9	//ss可以保持最大数量的时间
	SustainPeakMaxTime = 12
	RelaxMinInterval = 2	//ss停火期时长
	RelaxMaxInterval = 3

	ShouldAllowSpecialsWithTank = true //允许克局的特感
}

Director.ResetMobTimer()
