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

