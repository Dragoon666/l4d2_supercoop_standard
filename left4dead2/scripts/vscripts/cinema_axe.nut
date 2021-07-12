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
button <- Entities.FindByName(null, "b_switcher2");
baseorigin <- button.GetOrigin();
activator_surv <- Entities.FindByClassnameNearest ("player", baseorigin, 100);
if(activator_surv){
foreach(i, m in melee){
ent <- null;
if((ent = Entities.FindByModel(null, m)) != null)
{
	if(i == "fireaxe")
	{	
		DoEntFire("!self","Kill","0",0,null,ent);
		EntFire("cont_relay", "Trigger", "", 0, "");
		EntFire("trig_weapon", "Disable", "", 0, "");
	}
	else
	{	
		DoEntFire("!self","Kill","0",0,null,ent);
		EntFire("pistol_strip", "StripWeaponByClassname", "weapon_pistol", 0, activator_surv);
		EntFire(melee_equip[i], "Use", "", 0, activator_surv);
		EntFire("trig_weapon", "Disable", "", 0, "");
	}
}
}
foreach(j, n in melee){
ent <- null;
while((ent = Entities.FindByModel(ent, n)) != null)
{
   DoEntFire("!self","Kill","0",0,null,ent);
}
}
}