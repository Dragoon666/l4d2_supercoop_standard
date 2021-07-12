IncludeScript("VSLib");

local jackolanterns = 0;
local bloodcandles = 0;

function BalanceFinale() {
    /*Remove medkits and tank from the finale room based on difficulty*/
    switch(Convars.GetStr("z_difficulty"))
	{
	case "Easy":
        local extratank = Entities.FindByName(null,"spawn_tank");
        extratank.Kill();
        break;
	case "easy":
        local extratank = Entities.FindByName(null,"spawn_tank");
        extratank.Kill();
        break;
	case "Normal":
        local firstaid = Entities.FindByName(null,"firstaid_4");
        firstaid.Kill();
        local extratank = Entities.FindByName(null,"spawn_tank");
        extratank.Kill();
        break;
	case "normal":
        local firstaid = Entities.FindByName(null,"firstaid_4");
        firstaid.Kill();
        local extratank = Entities.FindByName(null,"spawn_tank");
        extratank.Kill();
        break;
	case "Hard":
        local firstaid1 = Entities.FindByName(null,"firstaid_3");
        local firstaid2 = Entities.FindByName(null,"firstaid_4");
        firstaid1.Kill();
        firstaid2.Kill();
        break;
	case "hard":
        local firstaid1 = Entities.FindByName(null,"firstaid_3");
        local firstaid2 = Entities.FindByName(null,"firstaid_4");
        firstaid1.Kill();
        firstaid2.Kill();
        break;
    case "Advanced":
        local firstaid1 = Entities.FindByName(null,"firstaid_3");
        local firstaid2 = Entities.FindByName(null,"firstaid_4");
        firstaid1.Kill();
        firstaid2.Kill();
        break;
	case "advanced":
        local firstaid1 = Entities.FindByName(null,"firstaid_3");
        local firstaid2 = Entities.FindByName(null,"firstaid_4");
        firstaid1.Kill();
        firstaid2.Kill();
        break;
	case "Impossible":
        local firstaid1 = Entities.FindByName(null,"firstaid_2");
        local firstaid2 = Entities.FindByName(null,"firstaid_3");
        local firstaid3 = Entities.FindByName(null,"firstaid_4");
        firstaid1.Kill();
        firstaid2.Kill();
        firstaid3.Kill();
        break;
	case "impossible":
        local firstaid1 = Entities.FindByName(null,"firstaid_2");
        local firstaid2 = Entities.FindByName(null,"firstaid_3");
        local firstaid3 = Entities.FindByName(null,"firstaid_4");
        firstaid1.Kill();
        firstaid2.Kill();
        firstaid3.Kill();
        break;
    case "Expert":
        local firstaid1 = Entities.FindByName(null,"firstaid_2");
        local firstaid2 = Entities.FindByName(null,"firstaid_3");
        local firstaid3 = Entities.FindByName(null,"firstaid_4");
        firstaid1.Kill();
        firstaid2.Kill();
        firstaid3.Kill();
        break;
	case "expert":
        local firstaid1 = Entities.FindByName(null,"firstaid_2");
        local firstaid2 = Entities.FindByName(null,"firstaid_3");
        local firstaid3 = Entities.FindByName(null,"firstaid_4");
        firstaid1.Kill();
        firstaid2.Kill();
        firstaid3.Kill();
        break;
	default:
        break;
	}
}

function ToggleFlashlightOn(){

    local survs = Players.AliveSurvivors();

    foreach (surv in survs)
	{
        surv.SetFlashlight(true);
    }

}

function ToggleFlashlightOff(){

    local survs = Players.AliveSurvivors();

    foreach (surv in survs)
	{
        surv.SetFlashlight(false);
    }

}

function FlashlightFlicker(){
    local flashlightstate = true;
    local flickerspeed = 10000;
    local flickers = 7;
    local survs = Players.AliveSurvivors();
    local f = 0;
    for(f = 0; f < flickers; f++)
    {
        local t = 0;
        for(t = 0; t < flickerspeed; t++)
        {
            if (t >= flickerspeed) {
                foreach (surv in survs){
                    flashlightstate = !flashlightstate;
                    surv.SetFlashlight(flashlightstate);
                }       
            }
        }
    }
}

function SurvivorsScream(){
    player <- null;
    while(player = Entities.FindByClassname(player, "player"))   // Iterate through the script handles of the players.
    {
        DoEntFire("!self", "speakresponseconcept", "PlayerDeath", 0, null, player); // Make each player laugh.
    }
}

function GiveHealth(amount) {

    local bestTarget = null;
	local player = null;
    local target = null;
    
	while(player = Entities.FindByClassname(player, "player"))
	{
		if(player.IsSurvivor())
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
        if (bestTarget.GetHealth()+amount < 100)
        {
            bestTarget.SetHealth(bestTarget.GetHealth()+amount);
        } else {
            bestTarget.SetHealth(100);
        }
        EmitSoundOnClient("medbottle", bestTarget);
        DoEntFire("!self", "speakresponseconcept", "IsHealthy", 0, null, bestTarget); // Player comments on health use.
	} 	
}

function SendMessage(msg){
    Utils.SayToAll(msg);
}

function Announce(msg) {
}

function DoorLocked() {
    Utils.SayToAll("A powerful presence is keeping this door shut.");
}

function DoorBlocked() {
    Utils.SayToAll("The door is blocked.");
}

function PumpkinDoorUnlocked() {
    Utils.SayToAll("The door to the observatory has opened!");
}

function PumpkinLit(){
    jackolanterns = (jackolanterns+1);
    Utils.SayToAll((jackolanterns+"/20 jack-'o-lanterns lit."));
}

function PickupCrank(){
    Utils.SayToAll("Hexagonal-Crank obtained.");
}

function PickupBook(){
    Utils.SayToAll("Book of Asrahmat obtained. Place it in the ritual circle!");
}

function NoCrank(){
    Utils.SayToAll("The mechanism has a hexagonal hole.");
}

function InsertCrank(){
    Utils.SayToAll("Hexagonal crank inserted.");
}

function ClueBook(){
    Utils.SayToAll("Search the library for the Book of Asrahmat.");
}

function ClueCrank(){
    Utils.SayToAll("Search the rooms for the Hexagonal Crank.");
}

function ClueLadder(){
    Utils.SayToAll("Lower the ladder to the attic!");
}

function BookRetrieved(){
    Utils.SayToAll("The Book of Asrahmat has been returned to your inventory.");
}

function ClueBloodcandles(){
    Utils.SayToAll("Gather Blood Candles for the ritual.");
}

function ClueRetrievebook(){
    Utils.SayToAll("Retrieve the book of Asrahmat from the library.");
}

function ClueOffice(){
    Utils.SayToAll("Search the office for the secret lever.");
}

function ClueShortcut(){
    Utils.SayToAll("Shortcut unlocked!");
}

function ClueEscape(){
    Utils.SayToAll("The attic exit is open!");
}

function ClueSecretPassage(){
    Utils.SayToAll("A secret passage has opened!");
}

function DebugCollected(){
    Utils.SayToAll("Updated number of collected candles.");
}

function DebugFinale(){
    Utils.SayToAll("All candles placed.");
}

function FinaleSettings(){
    DirectorOptions <-
    {
    PreferredMobDirection = SPAWN_LARGE_VOLUME
    PreferredSpecialDirection = SPAWN_LARGE_VOLUME
    ShouldConstrainLargeVolumeSpawn = false
    MobSpawnMinTime = 45
    MobSpawnMaxTime = 90
    CommonLimit = 15
    ZombieSpawnRange = 3000
    }
    Director.ResetMobTimer()
}

function AddCandle(){
    bloodcandles = (bloodcandles+1);
    Utils.SayToAll("Collected "+bloodcandles+"/13 blood candles.");
    if (bloodcandles == 13){
        printl("All blood candles collected. Place them at the altar.");
        Utils.SayToAll("All blood candles collected. Place them at the altar.");
    }
}