/// @description 
// Purpose:

if (iframes > 0) {
	if ((iframes mod 2) == 0) {
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