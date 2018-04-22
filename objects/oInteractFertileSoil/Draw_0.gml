/// @description Insert description here
// You can write your code in this editor

draw_self();

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

