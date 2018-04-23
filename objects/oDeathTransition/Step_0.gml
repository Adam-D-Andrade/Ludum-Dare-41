/// @description 
// Purpose:

if FadeIn {
	alpha += 0.01;
	if (alpha >= 1){
		alarm[0] = 180;
		FadeIn = !FadeIn;
	}
}

if FadeOut {
	alpha -= 0.01;
	if (alpha <= 0){
		instance_destroy();
	}
}

if ((DrawDeath == false) && (!FadeIn)) {
	DrawDeath= true;
	with(instance_create_layer(x, y, "GUI", oYouDied)){
		depth = other.depth -1;
	}
}
