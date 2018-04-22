/// @description 
// Purpose:

event_inherited();

left_view = camera_get_view_x(view_camera[0]);
right_view = left_view + camera_get_view_width(view_camera[0])

if (x > right_view) or (x < left_view) {
	instance_destroy();
	global.PlayerDeath = true;
}
