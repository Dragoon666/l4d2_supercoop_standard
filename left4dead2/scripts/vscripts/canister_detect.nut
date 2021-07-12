//detects if the canister exists or not and respawns another if the latter

CanisterModel <- "models/props_equipment/oxygentank01.mdl"
CanisterCheckActive <- 0

OurCanister <- null
OurLastSeen <- null
CanisterBeenRespawned <- 0

function StartCanisterWatch(){
        CanisterCheckActive = 1
}

OurThinkCount <- 0


function Think(){
    OurLastSeen <- null
	if ((OurThinkCount % 10) == 0){ // do this once every second
        if (CanisterCheckActive){
            OurCanister = Entities.FindByModel(OurLastSeen,CanisterModel)
            if (OurCanister){
                 if (((OurCanister.GetHealth() != 99) || ((OurCanister.GetHealth()) !=20 || (OurCanister.GetHealth() !=0)) && ((OurCanister.GetClassname() == "prop_physics") || (OurCanister.GetClassname() == "predicted_viewmodel")))) {
                    Msg("Canister Exists\n" )
					CanisterBeenRespawned = 1
					Msg("CanisterBeenRespawned set to 1\n" )
					printl("Type says: "+OurCanister.GetClassname()+" and health is "+OurCanister.GetHealth());
					printl(OurCanister.GetOrigin());
						local origin = OurCanister.GetOrigin()
						if (origin.z < -2000){
							DoEntFire("!self","Kill","0",0,null,OurCanister); // Kills the canister if it falls out of world and respawns another
							Msg("Canister fell out of world - respawning.\n" )
				}	

                } else {
                    Msg("Null Passthrough\n" )
                }
							
            }
            else {
                // canister gone
				if (CanisterBeenRespawned == 1){
                Msg("Respawning Canister\n" )
				EntFire("respawn_throughput*","Trigger", "", 2)
				CanisterBeenRespawned = 0
				Msg("CanisterBeenRespawned set to 0\n" )
				}
				else{
				Msg("Waiting on new canister\n" )
				}
				
            }
        }

    }
    OurThinkCount++
}