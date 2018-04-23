/// @description 
// Purpose:

var right = camera_get_view_width(view_camera[0]);


draw_set_text(c_white, fntAddisAbaba, fa_right, fa_top);

////////////////////////////////////////////////////////////////////////////////////////
////////-----------------------GUI---------------------------///////////////////////////
////////////////////////////////////////////////////////////////////////////////////////
//Draw Some Hearts
var sw, sh, spacing, xoffset

sw			= sprite_get_width(sprHeartPiece);
xoffset		= sprite_get_xoffset(sprHeartPiece);
sh			= sprite_get_height(sprHeartPiece);
spacing		= sw*0.8;

//DrawEmpty Hearts
for (var i = 0; i < global.MAX_HEALTH; i++) {
	draw_sprite_ext(sprHeartPiece, 1, guiLeft+xoffset+(spacing*i), guiTop+(0.5*sh), 0.7, 0.7, 0, c_white, 1);
}

//DrawFull Hearts
for (var i = 0; i < global.CurrentHealth; i++) {
	draw_sprite_ext(sprHeartPiece, 0, guiLeft+xoffset+(spacing*i), guiTop+(0.5*sh), 0.7, 0.7, 0, c_white, 1);	
}

//DrawHealthBar
global.PercentEnergy = (global.Energy/global.MAX_ENERGY)
percentEnergy		= (global.Energy/global.MAX_ENERGY) * 100;
var eleft, etop, eright, ebot;
eleft	= guiLeft;
etop	= guiTop + sh*1.1;
eright	= 400;
ebot	= etop + 24;
draw_healthbar(eleft, etop, eright, ebot, percentEnergy, c_black, c_red, c_green, 0, true, false);

//Draw current item
// Sprite[Items.Shovel]		= sprShovel;
if instance_exists(oPlayer){
	if instance_exists(oItem){
		draw_sprite_ext(oItem.Sprite[oPlayer.ActiveItem], 0, eleft+20, guiTop+(2*sh), 0.7, 0.7, 0, c_white, 1);
	}
}

/////////////////////////////////////////////////////////////////////////////////
///////////-------------Harvest Goals--------------------///////////////////////
/////////////////////////////////////////////////////////////////////////////////

if (global.carrotCounter > global.carrotWin) global.carrotCounter = global.carrotWin;
if (global.cucumberCounter > global.cucumberWin) global.cucumberCounter = global.cucumberWin;
if (global.potatoCounter > global.potatoWin) global.potatoCounter = global.potatoWin;
if (global.squashCounter > global.squashWin) global.squashCounter = global.squashWin;


var alignLeft	= camera_get_view_width(view_camera[0]) - 300;
spacing			= 20;//sprite_get_width(sprGUICarrot)*0.5; //can make this smaller actually
var hSpacing	= 40;//sprite_get_height(sprGUICarrot)*0.75;
var guiElements = (global.carrotWin > 0) + (global.cucumberWin > 0) + (global.potatoWin > 0) + (global.squashWin > 0)
var h = 0;
var ItemHeightAlign = guiTop + 64;
var ItemLeftAlign	= alignLeft;
var padding = 40;

//draw_text_ext_transformed_color(alignLeft, guiTop, "Harvest Goals: ", 0, 10000, 1, 1, 0, c_yellow, c_yellow, c_yellow,c_yellow,1);


while(h < guiElements) {
	//draw_roundrect_color_ext(alignLeft-padding, guiTop+40, right - 40, guiTop+padding+(hSpacing*h), 10, 0, c_yellow, c_yellow, false);
	DrawNineSliceStretched(sprGuiWrapper,ItemLeftAlign-padding, guiTop-padding, alignLeft+250, guiTop+180, c_white);
	draw_sprite_ext(HarvestGoals, 0, alignLeft+100, guiTop+10, 0.6, 0.6, 0, c_white, 1);
	//Carrot gui
	if (global.carrotWin > 0) {
		for (var i = 0; i < global.carrotWin; i++) {
				draw_sprite_ext(sprGUICarrot, 1, ItemLeftAlign+(spacing*i), ItemHeightAlign+(hSpacing*h), 0.5, 0.5, 0, c_white, 1);
		}
		for (var i = 0; i < global.carrotCounter; i++) {
			draw_sprite_ext(sprGUICarrot, 0, ItemLeftAlign+(spacing*i), ItemHeightAlign+(hSpacing*h), 0.5, 0.5, 0, c_white, 1);	
		}
		h++;
	}

	//potato gui
	if (global.potatoWin > 0) {
		for (var i = 0; i < global.potatoWin; i++) {
				draw_sprite_ext(sprGUIPotato, 1, ItemLeftAlign+(spacing*i), ItemHeightAlign+(hSpacing*h), 0.5, 0.5, 0, c_white, 1);
		}
		for (var i = 0; i < global.potatoCounter; i++) {
			draw_sprite_ext(sprGUIPotato, 0, ItemLeftAlign+(spacing*i), ItemHeightAlign+(hSpacing*h), 0.5, 0.5, 0, c_white, 1);	
		}
		h++;
	}

	//cucumber gui
	if (global.cucumberWin > 0) {
		for (var i = 0; i < global.cucumberWin; i++) {
			draw_sprite_ext(sprGUICucumber, 1, ItemLeftAlign-10+(spacing*i), ItemHeightAlign+(hSpacing*h) , 0.5, 0.5, 0, c_white, 1);
		}
		for (var i = 0; i < global.cucumberCounter; i++) {
			draw_sprite_ext(sprGUICucumber, 0, ItemLeftAlign-10+(spacing*i), ItemHeightAlign+(hSpacing*h), 0.5, 0.5, 0, c_white, 1);	
		}
		h++;
	}
	
//draw_text(right/2, camera_get_view_height(view_camera[0])/2, "GUI Elements: " + string(guiElements));
//draw_text(right/2, camera_get_view_height(view_camera[0])/2+ 40, "GUI Elements: " + string(h));
}
/*

enum Items {
	CarrotSeed,		//0
	WateringCan,	//1
	Shovel,			//2
	Last,			//3
	PotatoSeed,     //4
	CucumberSeed,   //5
	SquashSeed    //6
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


*/