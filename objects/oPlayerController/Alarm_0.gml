/// @description 
// Purpose:

//Death Timer
if (global.Energy <= 0) {
	alarm[1] = 180;
}
else{
	global.Energy -= 10;
	alarm[0] = 60;
}


