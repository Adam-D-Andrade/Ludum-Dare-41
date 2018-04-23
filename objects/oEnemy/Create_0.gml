/// @description 
// Purpose:
///Get Tile Map
var l = layer_get_id("CollisionMap");
tilemap = layer_tilemap_get_id(l);

//Sprite Info
spriteBBLeft	= sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
spriteBBRight	= sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
spriteBBBottom	= sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
spriteBBTop		= sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);

HitRight = false;
HitLeft = false;
HitTop = false;
HitBottom = false;

ysp = 0;
max_ysp = 10;
xsp = 0;

yDir = -1;
xDir = 1;
moveSpeed = 1
