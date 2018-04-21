/// @description 
// Purpose:
/// @description Everything event
       
//KEYBOARD INPUT & GAMEPAD INPUT     


///old move code
//Move Right
if (global.InputRight) { 
    xsp += movespeed;
}
else if (xsp > 0){
    if (xsp <= fric) {xsp = 0;}
    xsp-=fric;
} 
   
//could change all this code using Approach();
//Move Left
if (global.InputLeft){
    xsp -= movespeed;
}
else if (xsp < 0) {
    if (xsp >= fric) {xsp = 0;}
    xsp += fric; 
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
if (xsp < -max_xsp) xsp = -max_xsp;

if (ysp > max_ysp) ysp = max_ysp;
if (ysp < -max_ysp) ysp = -max_ysp;

