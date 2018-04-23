/// @description 
// Purpose:

enum Items {
	CarrotSeed,		
	WateringCan,	
	Shovel,			
	PotatoSeed,     
	CucumberSeed,   
	SquashSeed    
}

DefaultItem = Items.WateringCan;
ItemType = DefaultItem;

Sprite[Items.CarrotSeed]	= sprCarrotSeed;
Sprite[Items.PotatoSeed]	= sprPotatoSeed;
Sprite[Items.CucumberSeed]	= sprCucumberSeed;
Sprite[Items.SquashSeed]	= sprSquashSeed;
Sprite[Items.WateringCan]	= sprWateringCan;
Sprite[Items.Shovel]		= sprShovel;

sprite_index = Sprite[ItemType];
