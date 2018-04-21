/// @description 
// Purpose:

//Initialize Controls
InitGameInput();

if keyboard_check_pressed(vk_escape) {
	if (show_question("Do you want to quit the game?")){
		game_end();
	}
}

if keyboard_check_pressed(ord("R")) {
	room_restart();
}
