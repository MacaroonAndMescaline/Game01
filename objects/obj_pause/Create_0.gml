/// @description Pause menu items
// You can write your code in this editor
menu = ["Resume","Options","Quit to Main Menu","Go Previous Room" ,"Go Next Room"];
loaded = true;
whichMenu = "Pause";
global.RETURNMENU = obj_pause;
instance_deactivate_all(true);
//if(!global.PAUSE) { 
//	srpt_change_physics();
//	global.PAUSE = true;
//}
physics_pause_enable(true);