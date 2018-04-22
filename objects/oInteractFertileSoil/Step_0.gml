/// @description Insert description here
// You can write your code in this editor

debug_text = false;
debug_interact = false;
playerOn = false;

with oPlayer
    if place_meeting(x+10, y+10, oInteractFertileSoil)
        with other {
			playerOn = true;
            debug_text = true;	
        }

if playerOn = true {
	if keyboard_check_pressed(vk_space){
		debug_interact = true;
		
		if oPlayer.ActiveItem == Items.Seed {
			// plant seed
		}
		else if oPlayer.ActiveItem == Items.WateringCan {
			// water seed
		}
		else if oPlayer.ActiveItem == Items.Shovel {
			// dig plant
		}
		
	}	
}
