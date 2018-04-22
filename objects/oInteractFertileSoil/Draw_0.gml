/// @description Insert description here
// You can write your code in this editor

if instance_exists(oPlayer){
	//Set up the variable to return the result of the expression
	playerOn = place_meeting(x, y, oPlayer)

	if playerOn {
		
		//Method 1
		//draw_sprite(sprFertileDirtOutline, 0, x, y,);
		
		//Method 2
		//gpu_set_blendmode(bm_add);
		//draw_sprite_ext(sprite_index, 0, x, y, 1.1, 1.1, 0, c_lime, 1);
		//gpu_set_blendmode(bm_normal);
		
		//Method 3 doesnt work
		draw_set_color(c_lime);
		draw_rectangle(bbox_left -2, bbox_top -2, bbox_right + 2, bbox_bottom + 2, true);
		draw_set_color(c_white);
	}
}

	draw_self();

/*
if keyboard_check_pressed(vk_space){
    // do action
	draw_set_text(c_blue, fntAddisAbaba, fa_left, fa_top)
	draw_text(oPlayer.x+10, oPlayer.y+20, "null")
}

if debug_text = true {
	draw_set_text(c_white, fntAddisAbaba, fa_left, fa_top)
	draw_text(oPlayer.x+10, oPlayer.y+40, "collision detected")
}

if debug_interact = true {
	draw_set_text(c_red, fntAddisAbaba, fa_left, fa_top)
	draw_text(oPlayer.x+10, oPlayer.y+10, "valid interaction detected")
}

*/

