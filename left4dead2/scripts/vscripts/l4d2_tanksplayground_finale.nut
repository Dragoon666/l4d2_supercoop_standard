//-----------------------------------------------------------------------------
// Enumerations of stage types
TANK <- 1
 
//-----------------------------------------------------------------------------
// Initialization of tables that will be fed to DirectorOptions
 
DirectorOptions <-
{
  // Additional Director options
  ShouldConstrainLargeVolumeSpawn = false
 
  ZombieSpawnRange = 100
 
  SpecialRespawnInterval = 6000
  
  TankLimit = 20
  WitchLimit = 0
  CommonLimit = 0
  SmokerLimit = 0
  SpitterLimit = 0
  HunterLimit = 0
  JockeyLimit = 0
  BoomerLimit = 0
  ChargerLimit = 0
  ShouldAllowSpecialsWithTank = false
  PreferredMobDirection = SPAWN_ANYWHERE
  PreferredSpecialDirection = SPAWN_SPECIALS_ANYWHERE
  ZombieTankHealth = 8000
  TankHitDamageModifierCoop = 1

  A_CustomFinale_StageCount = 50

  A_CustomFinale1 = TANK
  A_CustomFinaleValue1 = 20
  A_CustomFinale2 = TANK
  A_CustomFinaleValue2 = 20
  A_CustomFinale3 = TANK
  A_CustomFinaleValue3 = 20
  A_CustomFinale4 = TANK
  A_CustomFinaleValue4 = 20
  A_CustomFinale5 = TANK
  A_CustomFinaleValue5 = 20
  A_CustomFinale6 = TANK
  A_CustomFinaleValue6 = 20
  A_CustomFinale7 = TANK
  A_CustomFinaleValue7 = 20
  A_CustomFinale8 = TANK
  A_CustomFinaleValue8 = 20
  A_CustomFinale9 = TANK
  A_CustomFinaleValue9 = 20
  A_CustomFinale10 = TANK
  A_CustomFinaleValue10 = 20
  A_CustomFinale11 = TANK
  A_CustomFinaleValue11 = 20
  A_CustomFinale12 = TANK
  A_CustomFinaleValue12 = 20
  A_CustomFinale13 = TANK
  A_CustomFinaleValue13 = 20
  A_CustomFinale14 = TANK
  A_CustomFinaleValue14 = 20
  A_CustomFinale15 = TANK
  A_CustomFinaleValue15 = 20
  A_CustomFinale16 = TANK
  A_CustomFinaleValue16 = 20
  A_CustomFinale17 = TANK
  A_CustomFinaleValue17 = 20
  A_CustomFinale18 = TANK
  A_CustomFinaleValue18 = 20
  A_CustomFinale19 = TANK
  A_CustomFinaleValue19 = 20
  A_CustomFinale20 = TANK
  A_CustomFinaleValue20 = 20
  A_CustomFinale21 = TANK
  A_CustomFinaleValue21 = 20
  A_CustomFinale22 = TANK
  A_CustomFinaleValue22 = 20
  A_CustomFinale23 = TANK
  A_CustomFinaleValue23 = 20
  A_CustomFinale24 = TANK
  A_CustomFinaleValue24 = 20
  A_CustomFinale25 = TANK
  A_CustomFinaleValue25 = 20
  A_CustomFinale26 = TANK
  A_CustomFinaleValue26 = 20
  A_CustomFinale27 = TANK
  A_CustomFinaleValue27 = 20
  A_CustomFinale28 = TANK
  A_CustomFinaleValue28 = 20
  A_CustomFinale29 = TANK
  A_CustomFinaleValue29 = 20
  A_CustomFinale30 = TANK
  A_CustomFinaleValue30 = 20
  A_CustomFinale31 = TANK
  A_CustomFinaleValue31 = 20
  A_CustomFinale32 = TANK
  A_CustomFinaleValue32 = 20
  A_CustomFinale33 = TANK
  A_CustomFinaleValue33 = 20
  A_CustomFinale34 = TANK
  A_CustomFinaleValue34 = 20
  A_CustomFinale35 = TANK
  A_CustomFinaleValue35 = 20
  A_CustomFinale36 = TANK
  A_CustomFinaleValue36 = 20
  A_CustomFinale37 = TANK
  A_CustomFinaleValue37 = 20
  A_CustomFinale38 = TANK
  A_CustomFinaleValue38 = 20
  A_CustomFinale39 = TANK
  A_CustomFinaleValue39 = 20
  A_CustomFinale40 = TANK
  A_CustomFinaleValue40 = 20
  A_CustomFinale41 = TANK
  A_CustomFinaleValue41 = 20
  A_CustomFinale42 = TANK
  A_CustomFinaleValue42 = 20
  A_CustomFinale43 = TANK
  A_CustomFinaleValue43 = 20
  A_CustomFinale44 = TANK
  A_CustomFinaleValue44 = 20
  A_CustomFinale44 = TANK
  A_CustomFinaleValue44 = 20
  A_CustomFinale45 = TANK
  A_CustomFinaleValue45 = 20
  A_CustomFinale46 = TANK
  A_CustomFinaleValue46 = 20
  A_CustomFinale47 = TANK
  A_CustomFinaleValue47 = 20
  A_CustomFinale48 = TANK
  A_CustomFinaleValue48 = 20
  A_CustomFinale49 = TANK
  A_CustomFinaleValue49 = 20
  A_CustomFinale50 = TANK
  A_CustomFinaleValue50 = 20
}
Convars.SetValue("l4d2_wsc_hunting_rifle","8")
Convars.SetValue("l4d2_wsc_autoshotgun","8")
Convars.SetValue("l4d2_wsc_melee","8")
Convars.SetValue("l4d2_wsc_molotov","8")
Convars.SetValue("l4d2_wsc_pain_pills","8")
Convars.SetValue("l4d2_wsc_adrenaline","8")
Convars.SetValue("l4d2_wsc_grenade_launcher","2")
Convars.SetValue("l4d2_wsc_pistol","8")
Convars.SetValue("l4d2_wsc_pistol_magnum","8")
Convars.SetValue("l4d2_wsc_pumpshotgun","8")
Convars.SetValue("l4d2_wsc_rifle","8")
Convars.SetValue("l4d2_wsc_rifle_ak47","8")
Convars.SetValue("l4d2_wsc_rifle_desert","8")
Convars.SetValue("l4d2_wsc_rifle_m60","2")
Convars.SetValue("l4d2_wsc_rifle_sg552","8")
Convars.SetValue("l4d2_wsc_shotgun_chrome","8")
Convars.SetValue("l4d2_wsc_shotgun_spas","8")
Convars.SetValue("l4d2_wsc_smg","8")
Convars.SetValue("l4d2_wsc_sniper_awp","2")
Convars.SetValue("l4d2_wsc_sniper_military","8")
Convars.SetValue("l4d2_wsc_sniper_scout","8")
Convars.SetValue("adrenaline_run_speed","420")
Convars.SetValue("survivor_incap_decay_rate","5")
Convars.SetValue("tank_burn_duration","30")
Convars.SetValue("survivor_crawl_speed","210")
Convars.SetValue("grenadelauncher_damage","700")
