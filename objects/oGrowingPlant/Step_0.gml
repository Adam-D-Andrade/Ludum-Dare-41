/// @description Insert description here
// You can write your code in this editor


// This will increment the growing stage whenever the lap increments
if global.LapCount > relativeLapCounter {
	growingStage++;
	relativeLapCounter = global.LapCount;
	image_index++;
}