
MakeUnique();




//Move Camera when player exists

if instance_exists(oPlayer){
	if (global.Horizontal){
		y = oPlayer.y;
		if global.MovingRight{	
			x += global.ScrollSpeed;
		}
		else {
			x -= global.ScrollSpeed;
		}
	}
	//else {
	//	x = oPlayer.x;
	//	if global.MovingUp{	
	//		y -= global.ScrollSpeed;
	//	}
	//	else {
	//		y += global.ScrollSpeed;
	//	}		
	//}
}


/* */
///Screen Shake
    if (intensity != 0)
        {
        intensity += (0 - intensity) / ease
		//camera_set_view_angle
		camera_set_view_angle(view_camera[0], random_range(-anglerange, anglerange) * intensity)
        
        x += random_range(-xrange, xrange) * intensity
        y += random_range(-yrange, yrange) * intensity    
        }


