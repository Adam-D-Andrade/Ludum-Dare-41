/// @description 
// Purpose:

global.Energy += 10;
with(other) instance_destroy();

// play sound
if !audio_is_playing(sndPowerup) {
	audio_play_sound(sndPowerup, 1, false);
}