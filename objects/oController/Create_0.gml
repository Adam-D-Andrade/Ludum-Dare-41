/// @description 
// Purpose:

MakeUnique();
audio_master_gain(0.5);
audio_play_sound(Potatocrusher, 1, true);

global.MAX_HEALTH = 3;
global.CurrentHealth = global.MAX_HEALTH;

global.MAX_ENERGY	= 100;
global.Energy		= 100;

global.Horizontal	= false;
global.MovingRight	= false;
global.MovingUp		= false;
global.ScrollSpeed	= 4;

global.LapCount		= 0;
global.LevelDone	= false;

global.PlayerDeath	= false;

global.DeathCount	= 0;

// These are for tracking how many plants have been harvested by user per level
// should draw this on the GUI
global.carrotCounter = 0;
global.potatoCounter = 0;
global.squashCounter = 0;
global.cucumberCounter = 0;

global.carrotSatisfied = false;
global.potatoSatisfied = false;
global.squashSatisfied = false;
global.cucumberSatisfied = false;

//GUI variables
guiLeft = 50;
guiTop = 50;

////////////WIN CONDITIONS//////////////////////////////////
// Setup win condition values for level
global.carrotWin	= 0;
global.potatoWin	= 0;
global.cucumberWin	= 0;
global.squashWin	= 0;

// Datastore for win conditions - this should be standard boilerplate for each level
global.WinConditions = ds_map_create();
ds_map_add(global.WinConditions, "carrotWin", global.carrotWin);
ds_map_add(global.WinConditions, "potatoWin", global.potatoWin);
ds_map_add(global.WinConditions, "cucumberWin", global.cucumberWin);
ds_map_add(global.WinConditions, "squashWin", global.squashWin);


