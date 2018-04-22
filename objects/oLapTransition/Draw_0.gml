/// @description 
// Purpose:
var xx, yy, xscale, yscale;

xx = camera_get_view_x(view_camera[0]);
yy = camera_get_view_y(view_camera[0]);

xscale = camera_get_view_width(view_camera[0])
yscale = camera_get_view_height(view_camera[0])

draw_sprite_ext(sprBlackPixel, 0, xx, yy, xscale, yscale, 0, c_black, alpha);

if (!FadeIn && !instance_exists(oNextDay) && !Spawned) {
	Spawned = !Spawned;
	with(instance_create_layer(x,y, "GUI", oNextDay)){
		depth = other.depth -1;
	}
}

