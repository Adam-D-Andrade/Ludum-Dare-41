/// @description Insert description here
// You can write your code in this editor

txtLetters += txtSpeed;

txtCurrent = string_copy(txtString, 1, floor(txtLetters));

draw_set_font(fntBMTC);

txtWidth = string_width(txtCurrent);
	
if (state != style.allAtOnce) {
	if ((txtWidth > txtMaxWidth) && (parsed == false)){
		//This will give us the character position to insert a line break
		charNum = string_length(txtCurrent);

		//Using the string length get the number of line breaks we need to add
		var numLineBreaks = txtLength div charNum;
		var lineBreakPosition = 0;
		var tempPos = 0;
	
		for (var i = 1; i <= numLineBreaks; i++) {
			lineBreakPosition = charNum * i;
			tempPos = lineBreakPosition;
			if (string_char_at(txtString, tempPos) != " ") {
				while(string_char_at(txtString, tempPos) != " ") {
					tempPos++;
				}
				txtString = string_insert("\n", txtString, tempPos);
			}
			else {
				txtString = string_insert("\n", txtString, tempPos);
			}
		}
		parsed = true;
	}
} 
else {
	fullTextHeight = string_height_ext(txtString, -1, txtMaxWidth);
}

txtHeight = string_height(txtCurrent);



if (txtLetters >= txtLength) && (keyboard_check_pressed(vk_anykey)) {
	instance_destroy();
	//with(oCamera) follow = oPlayer 
	//Code above is to reset camera following assuming we want the camera t focus on the text
}



