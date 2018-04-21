/// @description 
// Purpose:

Item[0] = "No Item";
Item[1] = "Seed";
Item[2] = "Watering Can";
Item[3] = "Shovel";

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
