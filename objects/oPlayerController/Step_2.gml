/// @description 
// Purpose:
/// @description 
// Purpose:
/// @description  Movement & collisions




////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////OBJECT COLLISIONS//////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
//CHECK HORIZONTAL COLLISIONS

//if place_meeting(x+xsp, y, oParWall){
//    while (!place_meeting(x+sign(xsp), y, oParWall)) x += sign(xsp);         
//    xsp = 0;
//}


    
////////////
    
////////////// VERTICAL COLLISION CHECKING//////////////
//if you hit a wall come to a nice stop
//if place_meeting(x, y+ysp, oParWall){
//    while (!place_meeting(x, y+sign(ysp), oParWall)){
//        y += sign(ysp);                
//    }    
//    ysp = 0;
//}

    //Commit to Y Movement
    y += ysp;


///////////////////////////////////////////////////////////////////////////////
//////////////TILE COLLISIONS////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////

if (ysp > 0) {
	//return some tile map info
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	
	if (t1 != 0 or t2 != 0) {
		y = ((bbox_bottom & ~63) - 1) - spriteBBBottom;
		ysp = 0;
	}
}
else {
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	
	if (t1 != 0 or t2 != 0) {
		y = ((bbox_top + 64) & ~63) - spriteBBTop;
		ysp = 0;
	}
}


//COMMIT TO CHANGES IN X COORDINATES
//apply xsp value to x coordinate
    
	x += xsp;

//Moving Right
if (xsp > 0) {
	//return some tile map info
	var t1 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	
	if (t1 != 0 or t2 != 0) {
		x = ((bbox_right & ~63) - 1) - spriteBBRight;
		xsp = 0;
	}
}
else {
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	
	if (t1 != 0 or t2 != 0) {
		x = ((bbox_left + 64) & ~63) - spriteBBLeft;
		xsp = 0;
	}
}



