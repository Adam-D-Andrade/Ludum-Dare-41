

//Zoom view
/*
var zoom_speed = 0.1;
view_zoom += keyboard_check_pressed(vk_add) * zoom_speed;
view_zoom -= keyboard_check_pressed(vk_subtract) * zoom_speed;

view_zoom = clamp(view_zoom,0.2,view_max_zoom);

__view_set( e__VW.WView, 0, oDisplayControl.ideal_width/view_zoom );
__view_set( e__VW.HView, 0, oDisplayControl.ideal_height/view_zoom );

//Center on Camera
__view_set( e__VW.XView, 0, x - __view_get( e__VW.WView, 0 )/2 );// -10;
__view_set( e__VW.YView, 0, y - __view_get( e__VW.HView, 0 )/2 );// -10;
*/

//Move Camera when player exists
if instance_exists(oPlayer)
{
    var xTo, yTo;
    
    //Move camera towards cursor direction
    move_towards_point(mouse_x, mouse_y, 0);
    var aimDistance = distance_to_point(mouse_x, mouse_y);
    var aimDirx = oPlayer.x + lengthdir_x(min(128, aimDistance), direction);
    var aimDiry = oPlayer.y + lengthdir_y(min(128, aimDistance), direction);

    xTo = aimDirx;
    yTo = aimDiry;

    
    //Commit to camera movement
    x += round((xTo-x)/10);
    y += round((yTo-y)/10);
	
    //Original view code
   //__view_set( e__VW.HBorder, 0, __view_get( e__VW.WView, 0 )/2 ) 
   // __view_set( e__VW.VBorder, 0, __view_get( e__VW.HView, 0 )/2 )
    
}

/* Used in other game
if (SpawnCam == true)
{
    //Move camera towards cursor direction
    
    //move_towards_point(mouse_x, mouse_y, 0);
    xto = global.Startx //+ lengthdir_x(min(128, distance_to_point(mouse_x, mouse_y)), direction);
    yto = global.Starty //+ lengthdir_y(min(128, distance_to_point(mouse_x, mouse_y)), direction);

    //Clamp view in the room
    /*
    view_xview = clamp(view_xview, 0, room_width-view_wview);
    view_yview = clamp(view_yview, 0, room_height-view_hview);
    
    
    //Commit to camera movement
    x += round((xto-x)/10);
    y += round((yto-y)/10);
    
    //Original view code
    __view_set( e__VW.HBorder, 0, __view_get( e__VW.WView, 0 )/2 ) 
    __view_set( e__VW.VBorder, 0, __view_get( e__VW.HView, 0 )/2 )

}
*/


        
        
	
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


