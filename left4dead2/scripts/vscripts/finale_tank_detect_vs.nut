//detects the birth of the football field tank and fires a delayed output on vs

TankModel <- "models/sblitz/tank_sb.mdl"
TankCheckActive <- 0

TankTime <- null
TankTimeOut <- 60 * 2 // 2 minutes
OurTank <- null
OurLastSeen <- null 

function StartTankWatch(){
	TankCheckActive = 1
	TankTime = Time()
}

function DoOnTankDeath(){
	// Firing outputs
	Msg("Firing Delayed Barrier Destruction\n")
	EntFire("vs_destruct_relay","trigger", "", 1 )
	EntFire(self.GetName(), "Kill", "", 2 )
	Msg("Ending detect script\n" )

}

function DoOnTankDeath2(){
	// Firing outputs
	Msg("Firing Backup Barrier Destruction if needed\n")
	EntFire("exp1_relay","trigger", "", 1 )
	EntFire(self.GetName(), "Kill", "", 2 )
	Msg("Ending detect script\n" )

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