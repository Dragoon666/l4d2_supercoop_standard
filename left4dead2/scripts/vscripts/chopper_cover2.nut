//#############################################################
Msg("Initializing chopper hover script");
/*
choppercover.nut
author: Lee Pumphret
http://www.leeland.net


This script simply computes the average survivor position, then moves the entity passed as the
first argument (should be an info_target) to that location. The rest is all handled entity side.

Place a named info_target in your map. Pass this name as the EntityGroup0 in the call to this logic_script.

Design your path_track relative to this info_target Meaning the info_target should be near the center of the
path_track, and the path_track should be as high as you want your entity to hover around, relative to the
info_target.

Then parent your func_tracktrain to this info_target.

Updated 2010.09.01: If you want to do something based on distance between the "chopper" and the survivors,
pass the name of the func_tracktrain (or model attached to it) as EntityGroup1

*/


/*
The survivors table, once initialized, holds an entity reference to all survivors
To reference a specific survivor, you can say
survivors.nick (etc...)
*/

survivors <-{
   coach = "models/survivors/survivor_coach.mdl",
   ellis = "models/survivors/survivor_mechanic.mdl",
   nick = "models/survivors/survivor_gambler.mdl",
   rochelle = "models/survivors/survivor_producer.mdl"
}

survivors_found <- 0 // flag set to true once survivors are found

/*
Find survivors, this needs to be called after a delay. If you call it immediately,
it will fail as they have not been loaded yet, 10 sec after map load should be good.
You can call it with a logic_auto output, runscriptcode FindSurvivors()
*/
function FindSurvivors(){
   foreach(s,m in survivors){
    printl ("looking for "+s+" mdl:"+m);
    survivor <- Entities.FindByModel(null, m)
    if (survivor){
      printl(s+" found: "+survivor);
      survivors[s] = survivor
      survivors_found++
    }else{
      printl(s+" NOT FOUND!: "+survivor);
      survivors[s] = null
    }
   }


}


/*
Assign the info_target that our track will follow, your track should be above
this at the height you want it to hover relative to the survivors
*/

path_follow <- EntityGroup[0];
Ambulance_Train <- EntityGroup[1];
Relay_Speed <- EntityGroup[2];
Relay_Speed2 <- EntityGroup[3];
Relay_Speed3 <- EntityGroup[4];
chopper_distance <- 0

if (!path_follow){
   printl("ERROR no target");

}

ThinkCounter <- 0

function Think(){
   if (!survivors_found){
      return   // don't want to get called before we have found the surviors or errors
   }

   if (!path_follow){
      return   // no target for path to follow, nothing to do
   }
   local v = Vector(0,0,0);
   scount <- 0;

   // Add all our survivors together and divide by count for the average position
   foreach(s,m in survivors){
      if (m.IsValid() && (m.GetHealth() > 1)){  // don't count players with 1 health, ie dead
         sorigin <- m.GetOrigin();
         v += sorigin
         scount++;
      }
   }

   if (scount){ // should never not be 1 survivor, but...
      v.x /= scount
      v.y /= scount
      v.z /= scount
   }

   // now v has our average of the players, move the info_target there
   path_follow.SetOrigin(v)

   if (Ambulance_Train){
   // compute distance to model once a second
      if ( ThinkCounter++ % 10 == 0){
         porigin <- Ambulance_Train.GetOrigin();   // chopper
         sorigin <- v;               // computed center of survivors
         chopper_distance =  sqrt(pow(porigin.x - sorigin.x,2) + pow(porigin.y - sorigin.y,2)+pow(porigin.z - sorigin.z,2))
  printl("distance is "+ chopper_distance   ); // comment this out
         if (chopper_distance > 1100){
            DoEntFire( Relay_Speed.GetName(), "Trigger", "50", 0, null, null )
         }
 	if (chopper_distance < 1100){
            DoEntFire( Relay_Speed2.GetName(), "Trigger", "50", 0, null, null )
         }
	if (chopper_distance < 800){
            DoEntFire( Relay_Speed3.GetName(), "Trigger", "50", 0, null, null )
         }
      }
   }
}