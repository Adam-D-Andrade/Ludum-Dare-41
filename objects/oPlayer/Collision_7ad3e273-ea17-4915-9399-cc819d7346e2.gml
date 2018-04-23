/// @description 
// Purpose:

if (iframes <= 0) { 
	global.CurrentHealth--;
	iframes = 60;
	audio_play_sound(sndInjury2, 1, false);
}

