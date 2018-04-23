/// @description Insert description here
// You can write your code in this editor



switch (state)
{
	case style.topDown:
		var halfWidth = txtWidth;
		draw_set_colour(c_red);
		draw_roundrect_ext(x-txtBorder, y+txtHeight+(txtBorder*2), x+halfWidth+txtBorder, y, 20, 20, false);
		draw_set_text(c_white, fntXolonium, fa_left, fa_top);
		draw_text(x, y + (txtBorder), txtCurrent);
		draw_set_colour(c_white);
		break;
		
	case style.bottomUp:
		var halfWidth = txtWidth * 0.5;
		draw_set_colour(c_red);
		draw_roundrect_ext(x-halfWidth-txtBorder, y-txtHeight-(txtBorder*2), x+halfWidth+txtBorder, y, 20, 20, false);
		draw_set_text(c_white, fntXolonium, fa_center, fa_top);
		draw_text(x, y - txtHeight - txtBorder, txtCurrent);
		draw_set_colour(c_white);
		break;
		
	case style.allAtOnce:
		var fullWidth = txtMaxWidth;
		draw_set_colour(c_red);
		draw_roundrect_ext(x-txtBorder, y-txtBorder, x+fullWidth+txtBorder, y+fullTextHeight+txtBorder, 20, 20, false);
		draw_set_text(c_white, fntXolonium, fa_left, fa_top);
		draw_text_ext(x, y, txtString,-1, txtMaxWidth);
		draw_set_colour(c_white);
		break;
}

