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
foreach(i, m in melee){
ent <- null;
while((ent = Entities.FindByModel(ent, m)) != null)
{
   DoEntFire("!self","Kill","0",0,null,ent);
}
}