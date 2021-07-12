//detects the death of the football field tank and fires an output

TankModel <- "models/sblitz/tank_sb.mdl"
TankCheckActive <- 0

TankTime <- null
TankTimeOut <- 60 * 4 // 4 minutes

OurTank <- null
OurTankWasSeen <- null
OurLastSeen <- null

Our2ndTank <- null
Our2ndTankWasSeen <- null



function StartTankWatch(){
   TankCheckActive = 1
   TankTime = Time()
}

function DoOnTankDeath(){
   // Firing outputs
   Msg("Firing\n")
   TankCheckActive = null
   EntFire("exp1_relay","trigger", "", 3)
   EntFire(self.GetName(), "Kill", "", 4 )

}


function Think(){
   if (TankCheckActive){

     if (!OurTank){
      // if we don't have a handle to our tank, find it
       //Msg("Lee Looking for tank...\n" )
      OurTank = Entities.FindByModel(OurLastSeen,TankModel)
      if (OurTank){
         Msg("Spawned tank found\n")
         OurTankWasSeen = 1
         EntFire("midfield_tank_relay","trigger", "", 3)
         
         OurLastSeen = OurTank
      }

     }


     if (!Our2ndTank){
              //Msg("Looking for tank2...\n" )
      Our2ndTank = Entities.FindByModel(OurLastSeen,TankModel)
      if (Our2ndTank){
         Msg("tank2 found\n")
         Our2ndTankWasSeen = 1
         
         OurLastSeen = Our2ndTank
      }
     }



   if (Time() - TankTime > TankTimeOut){
         Msg("Tank Time Out... aborting\n")
         DoOnTankDeath()
    }else if (Our2ndTankWasSeen && OurTankWasSeen) {
      if ((!OurTank || (!OurTank.IsValid() || (OurTank.GetHealth() <= 1))) && (!Our2ndTank || (!Our2ndTank.IsValid() || (Our2ndTank.GetHealth() <= 1)))){
          // If tank is dead
               Msg("Tank is dead! tank1: "+OurTank+" tank2:"+Our2ndTank+"\n" )
               DoOnTankDeath()

      }else{
               //Msg("Tank still roams\n" )

      }



    }

   }
}