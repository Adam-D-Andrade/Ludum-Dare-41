/// @description 
// Purpose:

ysp += yDir * moveSpeed;

if HitTop {
	yDir *= -1;
	HitTop = false;
}

if HitBottom {
	yDir *= -1;
	HitBottom = false;	
}
 
 
if ysp > max_ysp{
	ysp = max_ysp;
}
if ysp < -max_ysp{
	ysp = -max_ysp;
}

