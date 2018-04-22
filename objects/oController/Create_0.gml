/// @description 
// Purpose:

MakeUnique();
audio_master_gain(0.5);
audio_play_sound(Potatocrusher, 1, true);

global.MAX_ENERGY	= 100;
global.Energy		= 100;

global.Horizontal	= false;
global.MovingRight	= false;
global.MovingUp		= false;
global.ScrollSpeed	= 4;

global.LapCount		= 0;
global.PlayerDeath	= false;

global.DeathCount	= 0;

// These are for tracking how many plants have been harvested by user per level
// should draw this on the GUI
global.carrotCounter = 0;
global.potatoCounter = 0;
global.squashCounter = 0;
global.cucumberCounter = 0;

