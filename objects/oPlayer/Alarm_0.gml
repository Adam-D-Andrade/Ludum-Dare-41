/// @description 
// Purpose:

global.Energy -= 1;

//Death Timer
if (global.Energy <= 0) {
	alarm[1] = 120;
}
else {
	alarm[0] = 60;
}





