Msg("spawn time script\n")


DirectorOptions <-
	{
		// This turns off tanks and witches.
		ProhibitBosses = true
	
		AlwaysAllowWanderers = 1
		NumReservedWanderers = 10
		
		MobMinSize = 5
		MobMaxSize = 10
		
		SustainPeakMinTime = 3
		SustainPeakMaxTime = 5
		
		IntensityRelaxThreshold = 0.99
		
		RelaxMinInterval = 30
		RelaxMaxInterval = 45
		RelaxMaxFlowTravel = 3000
		
		SpecialRespawnInterval = 55.0	
	}