/// @description 
// Purpose:

if (global.CurrentHealth < global.MAX_HEALTH){
	global.CurrentHealth++;
}

// play sound
if !audio_is_playing(sndPowerup) {
	audio_play_sound(sndPowerup, 1, false);
}

with(other) instance_destroy();

