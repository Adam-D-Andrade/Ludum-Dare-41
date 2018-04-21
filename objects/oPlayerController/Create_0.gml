/// @description 
// Purpose:

/// @description 
// Purpose: Initialize Variables

yscale = image_yscale;
xscale = image_xscale;
	
//States & Variables
ActiveItem = -1;
    
   
///Declare states
direc           = 0;
Attack          = false;
precision       = 1;

//Declare variables
if (global.Horizontal){
	if (global.MovingRight) {
		xsp = global.ScrollSpeed; 
	}
	else {
		xsp = -global.ScrollSpeed
	}
	ysp = 0;
}
else {
	if (global.MovingUp) {
		ysp = -global.ScrollSpeed;
	}
	else {
		ysp = global.ScrollSpeed;
	}
	xsp = 0;
}

    
max_xsp = 20;
max_ysp = 20;
    
movespeed = 4;
    
///Get Tile Map
var l = layer_get_id("CollisionMap");
tilemap = layer_tilemap_get_id(l);

//Sprite Info
spriteBBLeft	= sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
spriteBBRight	= sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
spriteBBBottom	= sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
spriteBBTop		= sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);




