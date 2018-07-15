/// @description Pause menu items
// You can write your code in this editor
menu = ["Resume","Options","Quit to Main Menu", "Go Next Room"];
loaded = true;
gamePause = true;
whichMenu = "Pause";
global.RETURNMENU = obj_pause;
instance_deactivate_all(true);
physics_pause_enable(true);