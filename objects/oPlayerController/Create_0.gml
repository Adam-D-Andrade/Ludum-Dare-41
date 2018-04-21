/// @description 
// Purpose:

/// @description 
// Purpose: Initialize Variables

yscale = image_yscale;
xscale = image_xscale;
	
//States & Variables
state = "IDLE";
    
    
///Declare states
direc           = 0;
Attack          = false;
precision       = 1;

//Declare variables
xsp = 0;
ysp = 0;
    
max_xsp = 10;
max_ysp = 10;
    

move_dir = 1;
movespeed = 2;
fric = 0.6;

hittop = 0;
falling = 0;
direc = 0;
    
///Get Tile Map
var l = layer_get_id("CollisionMap");
tilemap = layer_tilemap_get_id(l);

//Sprite Info
spriteBBLeft	= sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
spriteBBRight	= sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
spriteBBBottom	= sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
spriteBBTop		= sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);




