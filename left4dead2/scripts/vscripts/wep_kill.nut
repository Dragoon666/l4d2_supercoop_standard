Msg("Killing weapons\n");

//obsolete
weaponsToStrip <-
{
   weapon_pistol = 1
   weapon_smg = 1
   weapon_smg_silenced = 1
   weapon_pumpshotgun = 1
   weapon_shotgun_chrome = 1
};

foreach(w,v in weaponsToStrip){ // add "_spawn" variants
   weaponsToStrip[w+"_spawn"] <- v;

}

last_weapon <- null;


while (weapon <- Entities.FindByClassname(last_weapon, "weapon*")){
    printl("Found weapon:"+ weapon.GetClassname());
    if ((!weapon.GetMoveParent()) && (weapon.GetName() != "keep_wep"))
    {
      DoEntFire("!activator", "kill", "",0, weapon,null);
    }
    last_weapon = weapon;
}