/// @description 
// Purpose:

if ActiveItem != other.ItemType {
	ActiveItem = other.ItemType;
	
	// play sound
	if !audio_is_playing(sndItemPickup) {
		audio_play_sound(sndItemPickup, 1, false);
	}
}



