/// @description Death Timer 
// Purpose: Last check to see if the layer couln't get any food at the lasst minute

if (global.Energy <= 0) {
	instance_destroy();
}
