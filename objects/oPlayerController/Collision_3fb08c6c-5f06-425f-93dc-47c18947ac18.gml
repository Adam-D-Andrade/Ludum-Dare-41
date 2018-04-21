/// @description 
// Purpose:

if (!instance_exists(oLapTransition)){
	instance_create_layer(0, 0, "Instances",oLapTransition);
}
	
if (!instance_exists(oLapTransition)) {
	x = xstart;
	y = ystart;

	if instance_exists(oCamera){
		oCamera.x = x;
		oCamera.y = y;
	}
}
