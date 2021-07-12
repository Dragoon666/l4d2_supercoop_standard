//Left 4 Dead 2 Helm's Deep respawn script by The Fish
teleporterPrefix <- "deadbody_teleporter_";
printl("Respawn System by The Fish successfully loaded.");
function moveDeadBodies(buttonCaller){
	ent <- null;
	while(ent = Entities.FindByClassname(ent, "survivor_death_model")){
		try{
			ent.SetOrigin(Entities.FindByName(null, teleporterPrefix+buttonCaller).GetOrigin());
		}catch(error){}
	}
}