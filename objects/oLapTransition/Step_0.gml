/// @description 
// Purpose:

if FadeIn {
	alpha += 0.01;
	if (alpha >= 1){
		alarm[0] = 180;
		FadeIn = !FadeIn;
		if instance_exists(oPlayer){
			oPlayer.x = oPlayer.xstart;
			oPlayer.y = oPlayer.ystart;
			if instance_exists(oCamera){
				oCamera.x = oPlayer.x;
				oCamera.y = oPlayer.y;
			}
			instance_deactivate_object(oPlayer);
		}
	}
}

if FadeOut {
	alpha -= 0.01;
	if (alpha <= 0){
		instance_destroy();
		instance_activate_object(oPlayer);
	}
}


if (!FadeIn && !instance_exists(oNextDay) && !Spawned) {
	Spawned = !Spawned;
	with(instance_create_layer(x, y, "GUI", oNextDay)){
		depth = other.depth -1;
	}
}
