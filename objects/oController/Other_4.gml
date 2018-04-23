/// @description Reset Variables 
// Purpose:
game_set_speed(60, gamespeed_fps);
global.MAX_ENERGY	= 100;
global.Energy		= 100;
global.MAX_HEALTH = 3;
global.CurrentHealth = global.MAX_HEALTH;

global.carrotSatisfied = false;
global.potatoSatisfied = false;
global.cucumberSatisfied = false;
global.squashSatisfied = false;

global.carrotCounter = 0;
global.potatoCounter = 0;
global.squashCounter = 0;
global.cucumberCounter = 0;

// Datastore for win conditions - this should be standard boilerplate for each level
if ds_exists(global.WinConditions, ds_type_map){
	ds_map_replace(global.WinConditions, "carrotWin", global.carrotWin);
	ds_map_replace(global.WinConditions, "potatoWin", global.potatoWin);
	ds_map_replace(global.WinConditions, "cucumberWin", global.cucumberWin);
	ds_map_replace(global.WinConditions, "squashWin", global.squashWin);
}