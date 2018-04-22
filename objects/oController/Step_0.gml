/// @description 
// Purpose:

//Initialize Controls
InitGameInput();

global.RightView	= camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]);
global.LeftView		= camera_get_view_x(view_camera[0]);
global.TopView		= camera_get_view_y(view_camera[0]);
global.BottomView	= camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]);

if keyboard_check_pressed(vk_escape) {
	if (show_question("Do you want to quit the game?")){
		game_end();
	}
}

if keyboard_check_pressed(ord("R")) {
	room_restart();
}


///////////Player Death///////////////
if (global.PlayerDeath == true){
	instance_create_layer(0,0, "GUI", oDeathTransition);
	global.PlayerDeath = false;
}