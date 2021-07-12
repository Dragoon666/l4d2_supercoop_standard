//detects the death of coach and disables his stadium wav file so he doesnt speak from the grave

TankModel <- "models/survivors/survivor_coach.mdl"
TankCheckActive <- 0

TankTime <- null
TankTimeOut <- 60 * 99999 // Long time to avoid problems

OurTank <- null
OurLastSeen <- null 

function StartTankWatch(){
	TankCheckActive = 1
	TankTime = Time()
}

function DoOnTankDeath(){
	// Firing outputs
	//Msg("Firing\n")
	EntFire("coach_talk_case","Kill", "")
	EntFire(self.GetName(), "Kill", "", 1 )

}

function Think(){
	if (TankCheckActive){
	  if (!OurTank){
	  	
	  	 OurTank = Entities.FindByModel(OurLastSeen,TankModel)
	  	 if (Time() - TankTime > TankTimeOut){
	  	 	//Msg("Coach Time Out... aborting\n")
	  	 	DoOnTankDeath()
	  	 }
	  	 
	  }else if(OurTank.IsValid) {
	         if (!OurTank.IsValid() || (OurTank.GetHealth() <= 1) ){ /* dead */
			// If tank is dead
	         	//Msg("Coach is dead!\n" )
	         	DoOnTankDeath()
	         }else {
	         	// If tank is alive
	         	//Msg("Coach still roams\n" )
	         }

	  
	  
	  }
	
	}

}