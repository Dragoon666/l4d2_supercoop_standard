//-----------------------------------------------------
ERROR           <- -1
PANIC           <- 0
TANK            <- 1
DELAY           <- 2
CUSTOM          <- 3
 
//-----------------------------------------------------
 
PanicOptions <-
// DirectorOptions when in a PANIC stage
{
 
        MobMaxPending = 30
        MegaMobMinSize = 35
        MegaMobMaxSize = 45
        SustainPeakMinTime = 30
        SustainPeakMaxTime = 40
        CommonLimit = 40
}
 
TankOptions <-
// DirectorOptions when in a TANK stage
{
        ShouldAllowMobsWithTank = false
        ShouldAllowSpecialsWithTank = true
}
 
 
SharedOptions <-
// The base DirectorOptions
{      
         
        A_CustomFinale_StageCount = 7
         
        A_CustomFinale1                 = CUSTOM
        A_CustomFinaleValue1            = "ship_finale_power_search"
        A_CustomFinale2                 = DELAY
        A_CustomFinaleValue2            = 10
        A_CustomFinale3                 = PANIC
        A_CustomFinaleValue3            = 2
        A_CustomFinale4                 = TANK
        A_CustomFinaleValue4            = 1
        A_CustomFinale5                 = PANIC
        A_CustomFinaleValue5            = 3
        A_CustomFinale6                 = TANK
        A_CustomFinaleValue6            = 1
        A_CustomFinale7                 = DELAY
        A_CustomFinaleValue7            = 8
       
        TankLimit = 2
        WitchLimit = 0
        HordeEscapeCommonLimit = 30
        EscapeSpawnTanks = true
       
        PreferredMobDirection = SPAWN_LARGE_VOLUME
        PreferredSpecialDirection = SPAWN_LARGE_VOLUME
        ShouldConstrainLargeVolumeSpawn = false
       
        ZombieSpawnRange = 2000
        SpecialRespawnInterval = 20
}
 
// Set the initial DirectorOptions table.
DirectorOptions <- clone SharedOptions;
 
// Copies the content of one table to another.
function AddTableToTable( dest, src )
{
        foreach( key, val in src )
        {
                dest[key] <- val
        }
}
 
 
function OnBeginCustomFinaleStage( num, type ) // This function is run at the beginning of every stage.
{
        printl( "Beginning custom finale stage " + num + " of type " + type );
 
        local PANIC = 0;
        local TANK = 1;
        local DELAY = 2;
        local CUSTOM = 3;
 
        switch(type)
        {
                case PANIC:
                {
                        // Reset to the shared table.
                        DirectorOptions <- clone SharedOptions;
                       
                        // Add the panic options.
                        AddTableToTable(DirectorOptions, PanicOptions);
                        break;
                }
                case TANK:
                {
                        // Reset to the shared table.
                        DirectorOptions <- clone SharedOptions;
                       
                        // Add the tank options.
                        AddTableToTable(DirectorOptions, TankOptions);
                        break;
                }
                case DELAY:
                {
                        // Reset to the shared table.
                        DirectorOptions <- clone SharedOptions;
                        break;
                }
        }
}