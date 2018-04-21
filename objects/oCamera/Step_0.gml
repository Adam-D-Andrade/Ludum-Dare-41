
MakeUnique();
//Move Camera when player exists

if instance_exists(oPlayer)
{

	x = oPlayer.x;
	y = oPlayer.y;
    
}
    
	
/* */
///Screen Shake
    if intensity != 0
        {
        intensity += (0 - intensity) / ease
		//camera_set_view_angle
		camera_set_view_angle(camera, random_range(-anglerange, anglerange) * intensity)
        //__view_set( e__VW.Angle, 0, random_range(-anglerange, anglerange) * intensity )
        
        x += random_range(-xrange, xrange) * intensity
        y += random_range(-yrange, yrange) * intensity    
        }


