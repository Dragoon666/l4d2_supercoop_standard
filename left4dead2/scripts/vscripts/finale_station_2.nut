//detects the birth of the football field tank and fires a delayed output on vs

TankModel <- "models/infected/hulk_dlc3.mdl"
TankCheckActive <- 0

TankTime <- null
TankTimeOut <- 60 * 3 // 3 minutes
OurTank <- null
OurLastSeen <- null 

function StartTankWatch(){
	TankCheckActive = 1
	TankTime = Time()
}

function DoOnTankDeath(){
	// Firing outputs
	//Msg("Get Security Card!\n")
	//EntFire("relay_card_trigger","trigger", "", 1 )
	EntFire(self.GetName(), "Kill", "", 2 )
	Msg("Ending mini-finale script 1\n" )
}

function DoOnTankDeath2(){
	// Firing outputs
	Msg("Get Security Card!\n")
	EntFire("relay_card_trigger","trigger", "", 1)
	EntFire(self.GetName(), "Kill", "", 2 )
	Msg("Ending mini-finale script 2\n" )
}

function Think(){
	if (TankCheckActive){
	  if (!OurTank){
	  	// if we don't have a handle to our tank, find it
		OurTank = Entities.FindByModel(OurLastSeen,TankModel)
		if (Time() - TankTime > TankTimeOut){
		Msg("Tank Time Out... aborting\n")
	  	DoOnTankDeath2()
	  	}
	  	 
	  }else if(OurTank.IsValid) {
	    if (!OurTank.IsValid() || (OurTank.GetHealth() <= 1) ){ /* dead */
		// If tank is dead
	    Msg("Tank is dead!\n" )
	    DoOnTankDeath2()
	    }else {
			// If tank is alive
			Msg("Tank found countdown begun\n" )
			DoOnTankDeath()		
			}
	  }
	}
}