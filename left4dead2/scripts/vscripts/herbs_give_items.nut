function SpawnGreenHerb(origin)
{
		entTablePill <-
			{
			classname = "weapon_pain_pills_spawn"
			angles = Vector( 0, RandomFloat(0,359), 0 )
			body = 0
			solid = 0
			disableshadows = 1
			count = 1
			spawnflags = 0
			targetname = "herb_drop"
			origin = origin
			
			}
		g_ModeScript.CreateSingleSimpleEntityFromTable(entTablePill);
}

function SpawnBlueHerb(origin)
{
		entTableAdre <-
			{
			classname = "weapon_adrenaline_spawn"
			angles = Vector( 0, RandomFloat(0,359), 0 )
			body = 0
			solid = 0
			disableshadows = 1
			spawnflags = 0
			targetname = "herb_drop"
			origin = origin
			
			}
		g_ModeScript.CreateSingleSimpleEntityFromTable(entTableAdre);
}

function SpawnHerbDefi(origin)
{
		entTableDefi <-
			{
			classname = "weapon_defibrillator_spawn"
			angles = Vector( 0, RandomFloat(0,359), 0 )
			body = 0
			solid = 0
			disableshadows = 1
			spawnflags = 0
			targetname = "herb_drop"
			origin = origin
			}
		g_ModeScript.CreateSingleSimpleEntityFromTable(entTableDefi);
}

function SpawnRedHerb(origin)
{
		entTableKit <-
			{
			classname = "weapon_first_aid_kit_spawn"
			angles = Vector( 90, 306, 0 )
			body = 0
			solid = 0
			disableshadows = 1
			spawnflags = 0
			targetname = "herb_drop"
			origin = origin
			}
		g_ModeScript.CreateSingleSimpleEntityFromTable(entTableKit);
}

::SpawnBlueHerb <- SpawnBlueHerb;
::SpawnRedHerb <- SpawnRedHerb;
::SpawnHerbDefi <- SpawnHerbDefi;
::SpawnGreenHerb <- SpawnGreenHerb;


function GreenHerb()
{
		local positem = self.GetOrigin();
		
		local name = self.GetClassname();
			if( name == "func_door")
			{
				SpawnGreenHerb(positem);
			}	
}

function BlueHerb()
{
		local positem = self.GetOrigin();
		
		local name = self.GetClassname();
			if( name == "func_door")
			{
				SpawnBlueHerb(positem);
			}		
}

function RedHerb()
{
		local positem = self.GetOrigin() + Vector(-2, 3, 3);
		
		local name = self.GetClassname();
			if( name == "func_door")
			{
				SpawnRedHerb(positem);
			}
}

function HerbDefi()
{
		local positem = self.GetOrigin();
		
		local name = self.GetClassname();
			if( name == "func_door")
			{
				SpawnHerbDefi(positem);
			}
}

::RedHerb <- RedHerb;
::HerbDefi <- HerbDefi;
::GreenHerb <- GreenHerb;
::BlueHerb <- BlueHerb;