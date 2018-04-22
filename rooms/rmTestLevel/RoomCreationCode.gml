

global.Horizontal	= true;
global.MovingRight	= true;

// Setup win condition values for level
global.carrotWin = 1;
global.potatoWin = 0;
global.cucumberWin = 0;
global.squashWin = 0;

// Datastore for win conditions - this should be standard boilerplate for each level
global.WinConditions = ds_map_create();
//<<<<<<< HEAD
ds_map_add(global.WinConditions, "carrotWin", carrotWin);
ds_map_add(global.WinConditions, "potatoWin", potatoWin);
ds_map_add(global.WinConditions, "cucumberWin", cucumberWin);
ds_map_add(global.WinConditions, "squashWin", squashWin);


//=======
ds_map_add(global.WinConditions, "carrotWin", global.carrotWin);
ds_map_add(global.WinConditions, "potatoWin", global.potatoWin);
ds_map_add(global.WinConditions, "cucumberWin", global.cucumberWin);
ds_map_add(global.WinConditions, "squashWin", global.squashWin);
//>>>>>>> master
