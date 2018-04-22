/// @description Insert description here
// You can write your code in this editor

draw_self();

//Watered
if (watered) {
   draw_sprite(sprWatered, 0, x, y);
}

// debug
if debugMode == true {
	draw_set_text(c_white, fntDebug, fa_left, fa_top)
	draw_text(x, y + 10, "growingStage: " + string(growingStage));
	draw_text(x, y + 30, "maxGrowStage: " + string(maxGrowStage));
	draw_text(x, y + 50, "relativeLapCounter: " + string(relativeLapCounter));
	draw_text(x, y + 70, "watered: " + string(watered));
}

