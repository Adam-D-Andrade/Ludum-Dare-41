

global.Horizontal	= true;
global.MovingRight	= true;

// Setup win condition values for level
carrotWin = 5;
potatoWin = 5;
cucumberWin = 0;
squashWin = 0;

// Datastore for win conditions - this should be standard boilerplate for each level
global.WinConditions = ds_map_create();
ds_map_add(global.WinConditions, "carrotWin", carrotWin);
ds_map_add(global.WinConditions, "potatoWin", potatoWin);
ds_map_add(global.WinConditions, "cucumberWin", cucumberWin);
ds_map_add(global.WinConditions, "squashWin", squashWin);
