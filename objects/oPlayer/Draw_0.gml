/// @description 
// Purpose:

if (iframes > 0) {
	if (FlashRed) {
		FlashRed = !FlashRed;
		alarm[2] = 10;
		shader_set(shdRedFlash);
		draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1);
		shader_reset();
	}
	else {
		draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1);
	}
}
else {
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1);
}

// debug
if debugMode {
	draw_set_text(c_white, fntDebug, fa_left, fa_top)
	draw_text(x, y+10, "ActiveItem: " + string(ActiveItem));
}