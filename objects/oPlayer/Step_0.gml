/// @description 
// Purpose:

event_inherited();

xx = camera_get_view_x(view_camera[0]);

if (x < xx) {
	instance_destroy();
}
