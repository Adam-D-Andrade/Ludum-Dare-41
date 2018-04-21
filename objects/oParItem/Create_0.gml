/// @description 
// Purpose:

enum Items {
	Seed,			//0
	WateringCan,	//1
	Shovel,			//2
	Last			//3
}

DefaultItem = Items.WateringCan;
ItemType = DefaultItem;

Sprite[Items.Seed]			= sprSeed;
Sprite[Items.WateringCan]	= sprWateringCan;
Sprite[Items.Shovel]		= sprShovel;

sprite_index = Sprite[ItemType];
