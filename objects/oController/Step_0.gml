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


///////////Level Win//////////////////
if (!global.LevelDone){
	if (global.carrotCounter >= global.WinConditions[? "carrotWin"]) {
		global.carrotSatisfied = true;
	}
	if (global.potatoCounter >= global.WinConditions[? "potatoWin"]) {
		global.potatoSatisfied = true;
	}
	if (global.squashCounter >= global.WinConditions[? "squashWin"]) {
		global.squashSatisfied = true;
	}
	if (global.cucumberCounter >= global.WinConditions[? "cucumberWin"]) {
		global.cucumberSatisfied = true;
	}

	if global.cucumberSatisfied and global.carrotSatisfied and global.squashSatisfied and global.potatoSatisfied {
		global.LevelDone = true;	
		
		// Reset vars
		global.carrotSatisfied = false;
		global.potatoSatisfied = false;
		global.squashSatisfied = false;
		global.cucumberSatisfied = false;
		
		global.carrotCounter = 0;
		global.potatoCounter = 0;
		global.squashCounter = 0;
		global.cucumberCounter = 0;
	}
}

///////////Player Death///////////////
if (global.PlayerDeath == true){
	instance_create_layer(0,0, "GUI", oDeathTransition);
	global.PlayerDeath = false;
}


/////////LEVEL COMPLETED /////////////////////
if (global.LevelDone){
	instance_create_layer(x,y, "GUI", oLevelTransition);
	global.LevelDone = false;
}



