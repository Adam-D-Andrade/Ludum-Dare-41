/// @description 

//Speed at which text is drawn to the screen every frame
txtSpeed = 1;

//How many letters to draw, starts at 0 and increases every step (typewriter effect)
txtLetters = 0;

//The whole string we actually want to draw (with no line breaks)
txtString = "I made some modifications to your sign post code and now I can parse any string that is over a specific width and add line breaks! It will only add line breaks where it finds a space! Additionally the size of the text box is dynamic! Thanks Shaun!"; 

//Empty string to be filled (typewriter effect)
txtCurrent = "";

//Declare some Variable
txtWidth = 0;
txtMaxWidth = 200;
txtHeight= 0;
txtBorder = 10;
txtLength = string_length(txtString);
fullTextWidth = 0;
fullTextHeight = 0;
charNum = 0;
parsed = false;

//Declare an enum for choosing the style to draw the box
enum style {
	topDown,
	bottomUp,
	allAtOnce,
	last
}
state = style.allAtOnce;

