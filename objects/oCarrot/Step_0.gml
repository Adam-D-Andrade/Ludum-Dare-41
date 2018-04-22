/// @description Insert description here
// You can write your code in this editor


// This will increment the growing stage whenever the lap increments
if (global.LapCount > relativeLapCounter) {
	growingStage++;
	
	if (growingStage % 2 == 0) {
		image_index++;
	}
	
	if (watered == true) {
		image_index++;	
		growingStage++;
	}
	
	relativeLapCounter = global.LapCount;
	watered = false; // allow plant to be watered again
}

if instance_exists(oPlayer){
	//Set up the variable to return the result of the expression
	playerOn = place_meeting(x, y, oPlayer)

	if playerOn {
		debug_text = true;
		if keyboard_check_pressed(vk_space){
			if ((oPlayer.ActiveItem == Items.WateringCan) and (watered == false)) {
				audio_play_sound(sndWateringCan, 1, false);
				watered = true;
			}
		}
	}
}
