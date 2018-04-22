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
			if (oPlayer.ActiveItem == Items.Seed) {
				instance_create_layer(id.x, id.y, "InstancesFG", oGrowingPlant);
			}
			else if (oPlayer.ActiveItem == Items.WateringCan) {
				// water dat seed
			}
			else if (oPlayer.ActiveItem == Items.Shovel) {
				// dig plant
			}
		}
	}
}
