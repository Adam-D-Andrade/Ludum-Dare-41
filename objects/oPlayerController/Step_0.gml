
/// @description 
// Purpose:
/// @description Everything event
       
//KEYBOARD INPUT & GAMEPAD INPUT     

    hMoving = (xsp!=0) && grounded;


///old move code
//Move Right
if (global.InputRight) { 
    xsp += movespeed * 0.2;
}
else if (xsp > 0){
    if (grounded) {
        if (xsp <= fric) {xsp = 0;}
        xsp-=fric;
    }
    if (!grounded) {
        if (xsp <= Airfric) {xsp = 0;}
        xsp -= Airfric;   
    }
} 
   
//could change all this code using Approach();
//Move Left
if (global.InputLeft){
    xsp -= movespeed * 0.2;
}
else if (xsp < 0) {
    if (xsp >= fric) {xsp = 0;}
    xsp += fric; 
}    

//Not sure wtf this is doing?
if (global.InputRight && global.InputLeft){
    xsp -= sign(xsp) * min(abs(xsp),0.5);
}

//Set a maximum horizontal speed
if (xsp > max_xsp) xsp = max_xsp;
if (xsp < -max_xsp) xsp = -max_xsp;

//Set Max fly speed? and max fall speed
if (ysp > 35) ysp = 35;
if (ysp < -20) ysp = -20;



