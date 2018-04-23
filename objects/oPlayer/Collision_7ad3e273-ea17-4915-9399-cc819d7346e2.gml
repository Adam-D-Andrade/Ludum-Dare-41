/// @description 
// Purpose:

if (iframes <= 0) { 
	global.CurrentHealth--;
	iframes = 60;
	audio_play_sound(sndInjury, 1, false);
	ScreenShake(4,4,5,2,4);
}



