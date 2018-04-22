/// @description 
// Purpose:
/// @description Everything event
       
//KEYBOARD INPUT & GAMEPAD INPUT     


///old move code
//Move Right

if global.Horizontal {
	if global.MovingRight {
		xsp = global.ScrollSpeed;
	}
	else {
		xsp = -global.ScrollSpeed;
	}
}


if (keyboard_check(vk_right)) { 
    //xsp = Approach(xsp, max_xsp, movespeed);
	xsp += movespeed;
}
else if (keyboard_check(vk_left)) { 
    //xsp = Approach(xsp, -max_xsp, movespeed);
	xsp -= movespeed*2;
}
else {
	if (global.Horizontal){
		if (global.MovingRight){
			xsp = Approach(xsp, global.ScrollSpeed, movespeed);
		}
		else {
			xsp = Approach(xsp, -global.ScrollSpeed, movespeed);
		}
	}
	else {
		xsp = Approach(xsp, 0, movespeed);
	}
}   



//Not sure wtf this is doing?
if (global.InputRight && global.InputLeft){
    xsp -= sign(xsp) * min(abs(xsp),0.5);
}


//Move Down
if keyboard_check(vk_down){
    ysp = Approach(ysp, max_ysp, movespeed);
}
else {
	ysp = Approach(ysp, 0, 0.5);
}

//Move up
if keyboard_check(vk_up){
    ysp = Approach(ysp, -max_ysp, movespeed);
}
else {
	ysp = Approach(ysp, 0, 0.5);
}

//Set a maximum horizontal speed
if (xsp > max_xsp) xsp = max_xsp;
if (xsp < -max_xsp) xsp = -max_xsp*10;

if (ysp > max_ysp) ysp = max_ysp;
if (ysp < -max_ysp) ysp = -max_ysp;

/////////////////////////////////////////////////////////

