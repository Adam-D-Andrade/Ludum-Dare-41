/// @description 
// Purpose:
 
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
		HitBottom = true;
		y--;
	}
}
else {
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	
	if (t1 != 0 or t2 != 0) {
		y = ((bbox_top + 64) & ~63) - spriteBBTop;
		ysp = 0;
		HitTop = true;
		y++;
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
		HitRight = true;
		xsp = 0;
	}
}
else {
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	
	if (t1 != 0 or t2 != 0) {
		x = ((bbox_left + 64) & ~63) - spriteBBLeft;
		xsp = 0;
		HitLeft = true;
	}
}

 
