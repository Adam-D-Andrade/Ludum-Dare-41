/// @description 
// Purpose:

var w, h;

w = sprite_width;
h = sprite_height;

instance_create_layer(irandom_range(x, x+w), irandom_range(y, y+h), "InstancesFG", oEnergy);
