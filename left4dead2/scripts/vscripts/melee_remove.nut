survivors <-{
   zoey = "models/survivors/survivor_teenangst.mdl",
   bill = "models/survivors/survivor_namvet.mdl",
   louis = "models/survivors/survivor_manager.mdl",
   francis = "models/survivors/survivor_biker.mdl",
   coach = "models/survivors/survivor_coach.mdl",
   ellis = "models/survivors/survivor_mechanic.mdl",
   nick = "models/survivors/survivor_gambler.mdl",
   rochelle = "models/survivors/survivor_producer.mdl"
}
melee <-{
	fireaxe = "models/weapons/melee/w_fireaxe.mdl",
	golfclub = "models/weapons/melee/w_golfclub.mdl",
	frying_pan = "models/weapons/melee/w_frying_pan.mdl",
	machete = "models/weapons/melee/w_machete.mdl",
	baseball_bat = "models/weapons/melee/w_bat.mdl",
	crowbar = "models/weapons/melee/w_crowbar.mdl",
	cricket_bat = "models/weapons/melee/w_cricket_bat.mdl",
	tonfa = "models/weapons/melee/w_tonfa.mdl",
	katana = "models/weapons/melee/w_katana.mdl",
	electric_guitar = "models/weapons/melee/w_electric_guitar.mdl",
	riotshield = "models/weapons/melee/w_riotshield.mdl"
}
melee_equip <-{
	fireaxe = "fireaxe_equip_cinema",
	golfclub = "golfclub_equip_cinema",
	frying_pan = "frying_pan_equip_cinema",
	machete = "machete_equip_cinema",
	baseball_bat = "baseball_bat_equip_cinema",
	crowbar = "crowbar_equip_cinema",
	cricket_bat = "cricket_bat_equip_cinema",
	tonfa = "tonfa_equip_cinema",
	katana = "katana_equip_cinema",
	electric_guitar = "electric_guitar_equip_cinema",
	riotshield = "riotshield_equip_cinema"
}
surv <- {
p1 = "",
p2 = "",
p3 = "",
p4 = ""
}
eq <- 0;
rem <- 0;

function equip()
{
if(eq==0){
surv["p1"] = "";
surv["p2"] = "";
surv["p3"] = "";
surv["p4"] = "";
q <- 0;
foreach(s,m in survivors){
survivor <- Entities.FindByModel(null, m);
if(survivor){
i <- 0;
surv_ch <- null;
surv_ch = survivor.FirstMoveChild();
while((surv_ch != null) && (i < 6)){
if(surv_ch.GetClassname() == "weapon_melee"){
q = q+1;
surv["p"+q] = s;
EntFire("pistol_equip_cinema", "Use", 0, 0, survivor);
}
surv_ch = surv_ch.NextMovePeer();
i = i+1;
}
}
}
eq=1;
}
}

function remove_axe()
{
if(rem==0){
foreach(k,t in survivors){
if(k == surv["p1"] || k == surv["p2"] || k == surv["p3"] || k == surv["p4"]){
survivor <- Entities.FindByModel(null, t);
if(survivor){
baseorigin <- survivor.GetOrigin();
surv_melee <- Entities.FindByClassnameNearest ("weapon_melee", baseorigin, 70);
foreach(i, n in melee){
ent <- null;
while((ent = Entities.FindByModel(ent,n)) != null)
{
	if(i == "fireaxe"){
		DoEntFire("!self","Kill","0",0,null,ent);
	}
	else{
   if(ent == surv_melee){
		DoEntFire("!self","Kill","0",0,null,ent);
		EntFire("pistol_strip", "StripWeaponByClassname", "weapon_pistol", 0, survivor);
		EntFire(melee_equip[i], "Use", "", 0, survivor);
   }
   }
}
}
}
}
}
rem=1;
}
}