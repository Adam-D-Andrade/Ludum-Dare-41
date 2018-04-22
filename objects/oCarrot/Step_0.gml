/// @description Insert description here
// You can write your code in this editor


// This will increment the growing stage whenever the lap increments
if (global.LapCount > relativeLapCounter) {
	if (growingStage <= maxGrowStage) {	
				
		if (relativeLapCounter % 2 == 0) and (growingStage != maxGrowStage) {
			growingStage++;
			image_index++;
		}
	
		if (watered == true) and (growingStage != maxGrowStage) {
			growingStage++;
			image_index++;	
		}
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
			// Player has watering can and waters plant
			if ((oPlayer.ActiveItem == Items.WateringCan) and (watered == false) and (growingStage != maxGrowStage)) {
				audio_play_sound(sndWateringCan, 1, false);
				watered = true;
			}
			// Player has shovel and plant is ready to be harvested
			else if (oPlayer.ActiveItem == Items.Shovel) and (growingStage == maxGrowStage) {
				audio_play_sound(sndShovel1, 1, false);
				global.carrotCounter++;
				instance_destroy();
			}
		}
	}
}
