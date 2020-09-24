// This script controls the frequency that the "CAUTION ZOMBIES AHEAD!" message appears on this sign.


// This value is the max value for the random number generator
// change it to change the chances of a random message appearing on the traffic sign

MaxValue <- 20


function PickRandomNumber()
{
	local random_chance = RandomInt( 0, MaxValue )
	if( random_chance == 0 )
	{
		EntFire( EntityGroup[0].GetName(), "disable", 0 ) // this is the timer entity
		EntFire( EntityGroup[1].GetName(), "disable", 0 )
		EntFire( EntityGroup[2].GetName(), "disable", 0 )
		EntFire( EntityGroup[3].GetName(), "disable", 0 )
		EntFire( EntityGroup[4].GetName(), "enable", 0 ) // this is the zombie message panel
	}
}
PickRandomNumber()
