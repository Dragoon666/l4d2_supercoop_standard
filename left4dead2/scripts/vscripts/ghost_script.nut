IncludeScript("VSLib");

local ghost_active = false;
local ghost_target = null;
local ghost_name = "Player";
local ghost_anim = "idle";
local cycles = 0;
local moantimer = 0; /*Makes the ghost emit a moan from its location*/
local walkspeed = 1; /*How fast the ghost moves to a target*/
local hoverspeed = 1;
local turnspeed = 0.5;
local offset = 0.2; /*How precise the ghost must move to the target location*/
local reach = 30; /*Range at which the ghost kills players*/
local assassin = false; /*Ghost kills one player then disappears*/
local sealed = false; /*The Ghost is forced back into its tomb*/
local maxchasetime = 500;
local minchasetime = 100;
local patrolrange = 800;
local spawnpoint = Entities.FindByName(null,"spawn_ghost");
PrecacheSound("hauntedhouse/ghost_rattle_1.wav");
PrecacheSound("hauntedhouse/ghost_rattle_2.wav");
PrecacheSound("hauntedhouse/ghost_rattle_3.wav");
PrecacheSound("hauntedhouse/ghost_moan_1.wav");
PrecacheSound("hauntedhouse/ghost_moan_2.wav");
PrecacheSound("hauntedhouse/ghost_moan_3.wav");
PrecacheSound("hauntedhouse/ghost_moan_4.wav");
PrecacheSound("hauntedhouse/ghost_music.wav");

function GhostRoam() {
    if (ghost_active) {
        /*Update the number of cycles*/
        cycles = cycles + 1;
        GhostMoan();
        //Check if the ghost has a target
        if (ghost_target == null || !ghost_target || !ghost_target.IsValid()){

            local bestTarget = null;
            local player = null;
            local target = null;
            
            while(player = Entities.FindByClassname(player, "player"))
            {
                local dist = Utils.CalculateDistance(self.GetOrigin(), player.GetOrigin());
                if(player.IsSurvivor() && !player.IsDead() && dist <= patrolrange)
                {
                    if(!bestTarget || (player.GetOrigin() - self.GetOrigin()).Length() <
                        (bestTarget.GetOrigin() - self.GetOrigin()).Length())
                    {
                        bestTarget = player; 
                    }
                }
            }
                
            if(bestTarget)
            {
                target = bestTarget;
            }
            
            if(target != null){
                if(target.GetHealth() >= 1 && !sealed)
                {
                    //Set new ghost target;
                    cycles = 0;
                    moantimer = cycles + (RandomInt(20,100));
                    maxchasetime = (RandomInt(300,500));
                    ghost_target = target;
                    Utils.SayToAll("The darkness is coming for %s.", ghost_target.GetPlayerName());
                    EmitSoundOn("ghost_rattle_"+(RandomInt(1,3)),ghost_target);
                } else if (spawnpoint){
                    ReturnToSpawn();
                }
            } else if (spawnpoint){
                ReturnToSpawn();
            }

        } else {
            
            if (ghost_target.GetHealth() > 0 && !sealed){
                //Ghost has acquired a valid target and is moving towards it;
                //printl("GhostV: " + (ghost_target.GetOrigin() - self.GetOrigin()));
                self.SetForwardVector(ghost_target.GetOrigin() - self.GetOrigin()); //Turn;
                //DebugDrawLine(ghost_target.GetOrigin(), self.GetOrigin(), 0, 255, 0, false, 8.0); //Draw a green line from where the last hit was to where the current one is
                //Check if survivor is close enough;
                local dist = Utils.CalculateDistance(self.GetOrigin(), ghost_target.GetOrigin());
                GhostMove(dist,ghost_target);
                if ((dist < reach) || (assassin && dist < (reach*2))) {
                    //Kill the survivor;
                    AllSurvivorsScream();
                    ghost_target.SetHealth(0);
                    ghost_target.TakeDamage(999,1,self);
                    Utils.ShakeScreen(self.GetOrigin(), 2, 2, 35, 500);
                    cycles = 0;
                    moantimer = 0;
                    ghost_target = null;
                } else if (cycles >= maxchasetime || (dist > patrolrange && cycles >= minchasetime)) {
                    //Ghost seeks new target;
                    ghost_target = null;
                    cycles = 0;
                    moantimer = 0;
                    CheckAssassinMode();
                } else {
                    //Kill any other survivor that is nearby
                    local nearbyplayer = Entities.FindByClassnameNearest("player", self.GetOrigin(), reach);
                    if (nearbyplayer && nearbyplayer.GetHealth() > 0) {
                        nearbyplayer.SetHealth(0);
                        nearbyplayer.TakeDamage(999,1,self);
                        Utils.ShakeScreen(self.GetOrigin(), 2, 2, 35, 500); 
                        cycles = 0;
                        moantimer = 0;
                    }
                }
            } else {
                //Target is no longer valid;
                ghost_target = null;
                cycles = 0;
                moantimer = 0;
                CheckAssassinMode();
                AnimateGhost("idle");
            }
        }
    }
}

function ReturnToSpawn(){
    cycles = 0;
    moantimer = 0;
    ghost_target = null;
    //printl("Ghost wants to return to spawn!");
    self.SetForwardVector(spawnpoint.GetOrigin() - self.GetOrigin()); //Turn;
    //Check if ghost is close enough to spawn;
    local dist = Utils.CalculateDistance(self.GetOrigin(), spawnpoint.GetOrigin());
    GhostMove(dist,spawnpoint);
    if (dist < (reach/2)) {
        //Ghost has reached the spawnpoint;
        //printl("Ghost has reached spawn!");
        cycles = 0;
        if (sealed) {
            self.SetForwardVector(Vector(0 180 0));
            DoEntFire(self.GetName(), "SetAnimation", "sealed", 0, null, null);
            DoEntFire(self.GetName(), "SetDefaultAnimation", "idlesealed", 0, null, null);
            DeactivateGhost();
        } else {
            AnimateGhost("idle");
            CheckAssassinMode();
        }
    }
}

function CheckAssassinMode() {
    if (assassin) {
        DeactivateGhost();
        self.Kill();
    }
}

function SealTomb() {
    Utils.SayToAll("By the power of Asrahmat, the darkness is forced back into its tomb.");
    sealed = true;
    cycles = 0;
    moantimer = 0;
    ghost_target = null;
}

function GhostMove(dist,gtarget) {
    local movespeed = walkspeed;
    if (sealed){ 
        movespeed = walkspeed*2;
        AnimateGhost("crawl");
    } else {
        AnimateGhost("walk");
    }
    local ploc = gtarget.GetOrigin();
    local gloc = self.GetOrigin();
    local xspeed = 0;
    local yspeed = 0;
    local zspeed = 0;
    
    local xdist = abs(ploc.x-gloc.x);
    local ydist = abs(ploc.y-gloc.y);
    local tdist = dist;
    
    if (ploc.x < (gloc.x-offset)) {
        xspeed = -(movespeed*(xdist/tdist));
    } else if (ploc.x > (gloc.x+offset)){
        xspeed = (movespeed*(xdist/tdist));
    }
    
     if (ploc.y < (gloc.y-offset)) {
        yspeed = -(movespeed*(ydist/tdist));
    } else if (ploc.y > (gloc.y+offset)){
        yspeed = (movespeed*(ydist/tdist));
    }
    
     if (ploc.z < (gloc.z-offset)) {
        zspeed = -hoverspeed;
    } else if (ploc.z > (gloc.z+offset)){
        zspeed = hoverspeed;
    }
    
    self.SetOrigin(Vector(gloc.x+xspeed,gloc.y+yspeed,gloc.z+zspeed));
}

function AnimateGhost(animname) {

    if (ghost_anim != animname) {
        ghost_anim = animname;
        DoEntFire(self.GetName(), "SetAnimation", animname, 0, null, null);
        DoEntFire(self.GetName(), "SetDefaultAnimation", animname, 0, null, null);
    }
}


function ActivateGhost() {
    //The ghost activates and keeps hunting players until disabled
    //printl("Ghost has been activated!");
    ghost_active = true;
    assassin = false;
    sealed = false;
    Utils.PlaySoundToAll("ghost_music");
    spawnpoint = Entities.FindByName(null,"spawn_ghost");
    moantimer = (RandomInt(20,100));
    local gloc = self.GetOrigin();
    self.SetOrigin(Vector(gloc.x,gloc.y+81,gloc.z));
    DoEntFire(self.GetName(), "SetAnimation", "idle", 0, null, null);
}

function GhostMoan() {
    if (cycles >= moantimer && moantimer > 0) {
        moantimer = cycles + (RandomInt(20,100));
        EmitSoundOn("ghost_moan_"+(RandomInt(1,4)),self);
    }
}

function SpawnGhostOnce() {
    //The ghost activates once to kill one player, then vanishes
    //printl("Ghost has been activated!");
    ghost_active = true;
    assassin = true;
    sealed = false;
    Utils.PlaySoundToAll("ghost_music");
    spawnpoint = Entities.FindByName(null,"spawn_ghost_once");
    moantimer = 0;
}

function DeactivateGhost() {
    //printl("Ghost has been deactivated!");
    ghost_active = false;
    assassin = false;
    sealed = false;
    moantimer = 0;
}

function SurvivorDeath(survivor){
    if (survivor != null){
        DoEntFire("!self", "speakresponseconcept", "PlayerDeath", 0, null, survivor); // Emit player death scream.;
    }
}

function AllSurvivorsScream(){
    player <- null;
    while(player = Entities.FindByClassname(player, "player"))   // Iterate through the script handles of the players.;
    {
        DoEntFire("!self", "speakresponseconcept", "PlayerDeath", 0, null, player); // Make each player scream.;
    }
}