/// @description Insert description here
// You can write your code in this editor

debug_text = false;
debug_interact = false;

//Gotta check to see if the player exists
if instance_exists(oPlayer){
	//Set up the variable to return the result of the expression
	playerOn = place_meeting(x, y, oPlayer)

	if playerOn {
		debug_text = true;
		if keyboard_check_pressed(vk_space){
			//Carrot
			if ((oPlayer.ActiveItem == Items.CarrotSeed) and (occupied == false)) {
				occupyingInstance = instance_create_layer(id.x, id.y, "InstancesFG", oCarrot);
				audio_play_sound(sndSeeds, 1, false);
				occupied = true;
			}
		}
	}
}

// Reset occupied status to false when occupyingInstance is destroyed (harvested)
if !instance_exists(occupyingInstance) and occupied = true {
	occupied = false;	
}