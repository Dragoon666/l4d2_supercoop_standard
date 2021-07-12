// Fatal Freight Witch Script
// Made by NF and Daroot Leafstorm
// Adapted for use with Fatal Freight

// Chapter 3 Witches
local spots = ["will spawn inside the second tunnel (~25%)","will spawn just before the truck drop (~43%)","will spawn inside the fiery train tunnel (~70%)"]
 
local chosen_spot = -1
local chat_prefix = "The Witch "
 
SayWitchSpot <- function(spot_num){
    Say(null,chat_prefix + spots[spot_num-1],false)
    chosen_spot = spot_num-1
}
 
local function IsCommand(msg,ent,command){
    local message = ""
    local found_start = false
    local found_end = false
    local last_char = 0
    foreach(char in msg){
        if(char != 32 && char != 10){
            if(!found_start){
                found_start = true
            }
            message += char.tochar()
        } else if(char == 32){
            if(last_char != 32){
                found_end = true
            }
            if(found_start && !found_end){
                message += char.tochar()
            }
        }
    }
    return message == command
}
 
function OnGameEvent_player_say(params)
{
    local userid = params.userid
    local text = params.text
 
    if(IsCommand(text,GetPlayerFromUserID(userid),"!witch")){
        SayWitchSpot(chosen_spot+1)
    }
    if(IsCommand(text,GetPlayerFromUserID(userid),"!boss")){
        SayWitchSpot(chosen_spot+1)
    }
    if(IsCommand(text,GetPlayerFromUserID(userid),"!sm_witch")){
        SayWitchSpot(chosen_spot+1)
    }
}
 
__CollectEventCallbacks(this, "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener)