/// @description 
// Purpose:

var right = camera_get_view_width(view_camera[0]);


draw_set_text(c_white, fntAddisAbaba, fa_right, fa_top);
//draw_text(camera_get_view_x(view_camera[0]), camera_get_view_x(view_camera[0]), "Press 'R' to restart the room");
//draw_text(camera_get_view_x(view_camera[0]), camera_get_view_x(view_camera[0])+20, "Press 'Escape' to quit");
draw_text(right, 0, "Press 'R' to restart the room");
draw_text(right, 20, "Press 'Escape' to quit");


//Draw carrot tracker
draw_set_text(c_black, fntAddisAbaba, fa_right, fa_top);
draw_text(right, 60, "Carrots: " + string(global.carrotCounter));
draw_text(right, 80, "Potatoes: " + string(global.potatoCounter));
draw_text(right, 100, "Cucumbers: " + string(global.cucumberCounter));
draw_text(right, 120, "Squashes: " + string(global.squashCounter));



// Debug
if instance_exists(oPlayer){
	draw_set_text(c_white, fntDebug, fa_left, fa_top);
	draw_text(400, 0, ("Active item: " + string(oPlayer.ActiveItem)));
}


////////////////////////////////////////////////////////////////////////////////////////
////////-----------------------GUI---------------------------///////////////////////////
////////////////////////////////////////////////////////////////////////////////////////

//Draw Some Hearts
var sw, sh, spaceing

sw			= sprite_get_width(sprHeartPiece);
sh			= sprite_get_height(sprHeartPiece);
spaceing	= sw*1.2;

//DrawEmpty Hearts
for (var i = 0; i < global.MAX_HEALTH; i++) {
	draw_sprite_ext(sprHeartPiece, 1, guiLeft+(0.5*sw)+(spaceing*i), guiTop+(0.5*sh), 1, 1, 0, c_white, 1);
}

//DrawFull Hearts
for (var i = 0; i < global.CurrentHealth; i++) {
	draw_sprite_ext(sprHeartPiece, 0, guiLeft+(0.5*sw)+(spaceing*i), guiTop+(0.5*sh), 1, 1, 0, c_white, 1);	
}

//DrawHealthBar
var percentEnergy = (global.Energy/global.MAX_ENERGY) * 100
var eleft, etop, eright, ebot;
eleft	= guiLeft;
etop	= guiTop + 2*sh;
eright	= 400;
ebot	= etop + 64;
draw_healthbar(eleft, etop, eright, ebot, percentEnergy, c_black, c_red, c_yellow, 0, true, false);



