/// @description Insert description here
// You can write your code in this editor

self.debug_text = false;
self.debug_interact = false;
self.playerOn = false;

with oPlayer
    if place_meeting(x, y, oInteractFertileSoil)
        with other {
			self.playerOn = true;
            self.debug_text = true;	
        }

if self.playerOn = true {
	if keyboard_check_pressed(vk_space){
		self.debug_interact = true;
		
		if oPlayer.ActiveItem == Items.Seed {
			// plant seed
			instance_create_layer(self.x, self.y, "InstancesFG", oGrowingPlant);
		}
		else if oPlayer.ActiveItem == Items.WateringCan {
			// water seed
		}
		else if oPlayer.ActiveItem == Items.Shovel {
			// dig plant
		}
	}	
}
