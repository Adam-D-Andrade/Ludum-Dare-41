/// @description DrawNineSliceStretched(sprite, x1, y1, x2, y2, color)

/// @arg sprite
/// @arg x1
/// @arg y1
/// @arg x2
/// @arg y2
/// @arg color



var _size = sprite_get_width(argument0) / 3;
var _x1 = argument1;
var _y1 = argument2;
var _x2 = argument3;
var _y2 = argument4;

var _w = _x2 - _x1;
var _h = _y2 - _y1;

//Middle
draw_sprite_part_ext(argument0, 0, _size, _size, 1, 1, _x1 + _size, _y1 + _size, _w -(_size*2), _h -(_size*2), argument5, 1);

//Top Left
draw_sprite_part_ext(argument0, 0, 0, 0, _size, _size, _x1, _y1, 1, 1, argument5, 1);
//Top Right
draw_sprite_part_ext(argument0, 0, _size*2, 0, _size, _size, _x1 + _w - _size, _y1, 1, 1, argument5, 1);
//Bottom Left
draw_sprite_part_ext(argument0, 0, 0, _size*2, _size, _size, _x1, _y1 + _h - _size, 1, 1, argument5, 1);
//Bottom Right
draw_sprite_part_ext(argument0, 0, _size*2, _size*2, _size, _size, _x1 + _w - _size, _y1 + _h - _size, 1, 1, argument5, 1);

//Left Edge
draw_sprite_part_ext(argument0, 0, 0, _size, _size, 1, _x1, _y1 + _size, 1, _h-(_size*2), argument5, 1);
//Right Edge
draw_sprite_part_ext(argument0, 0, _size*2, _size, _size, 1, _x1 + _w-_size, _y1 + _size, 1, _h-(_size*2), argument5, 1);
//Top Edge
draw_sprite_part_ext(argument0, 0, _size, 0, 1, _size, _x1+_size, _y1, _w-(_size*2), 1, argument5, 1);
//Bottom Edge
draw_sprite_part_ext(argument0, 0, _size, _size*2, 1, _size, _x1+_size, _y1 + _h-(_size), _w-(_size*2), 1, argument5, 1);
