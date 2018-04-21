/// @description 
// Purpose:

if FadeIn {
	alpha += 0.005;
	if (alpha >= 1){
		FadeIn = !FadeIn;
	}
}
else {
	alpha -= 0.005;
	if (alpha <= 0){
		FadeIn = !FadeIn;
	}
}

