/// @description 
// Purpose:

enum Items {
	CarrotSeed,		//0
	WateringCan,	//1
	Shovel,			//2
	Last,			//3
	PotatoSeed,     //4
	CucumberSeed,   //5
	EggplantSeed    //6
}

DefaultItem = Items.WateringCan;
ItemType = DefaultItem;

Sprite[Items.CarrotSeed]	= sprCarrotSeed;
Sprite[Items.PotatoSeed]	= sprPotatoSeed;
//Sprite[Items.CucumberSeed]	= sprCucumberSeed;
//Sprite[Items.EggplantSeed]	= sprEggplantSeed;
Sprite[Items.WateringCan]	= sprWateringCan;
Sprite[Items.Shovel]		= sprShovel;

sprite_index = Sprite[ItemType];
