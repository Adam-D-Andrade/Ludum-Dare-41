/// @description 
// Purpose:

draw_set_text(c_white, fntAddisAbaba, fa_left, fa_top);
//draw_text(camera_get_view_x(view_camera[0]), camera_get_view_x(view_camera[0]), "Press 'R' to restart the room");
//draw_text(camera_get_view_x(view_camera[0]), camera_get_view_x(view_camera[0])+20, "Press 'Escape' to quit");
draw_text(0, 0, "Press 'R' to restart the room");
draw_text(0, 20, "Press 'Escape' to quit");

// Debug
if instance_exists(oPlayer){
	draw_set_text(c_white, fntDebug, fa_left, fa_top);
	draw_text(400, 0, ("Active item: " + string(oPlayer.ActiveItem)));
	
	draw_text(400, 20, ("Player X: " + string(oPlayer.x)));
	draw_text(400, 40, ("View Left X: " + string(oPlayer.xx)));
	draw_text(400, 60, ("View Right X: " + string(oPlayer.xx + camera_get_view_width(view_camera[0]))));
}
