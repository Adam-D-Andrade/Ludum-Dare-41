/// @description 
// Purpose:

draw_set_text(c_white, fntAddisAbaba, fa_left, fa_top);
//draw_text(camera_get_view_x(view_camera[0]), camera_get_view_x(view_camera[0]), "Press 'R' to restart the room");
//draw_text(camera_get_view_x(view_camera[0]), camera_get_view_x(view_camera[0])+20, "Press 'Escape' to quit");
draw_text(0, 0, "Press 'R' to restart the room");
draw_text(0, 20, "Press 'Escape' to quit");

// Debug
draw_set_text(c_white, fntDebug, fa_left, fa_top);
draw_text(400, 0, ("Active item: " + string(oPlayer.ActiveItem)));
