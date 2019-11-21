/// @description 
// You can write your code in this editor

whichMenu = "Gamepad";
menu = ["-back-","horizontal move","vertical move", "action", "jump", "climb"
, "attack Hammer", "attack spear"];
waiting= ["PLEASE PRESS ANY BUTTON ON GAMEPAD","Press Enter/Escape to cancel", "Press Start on Gamepad to cancel"];
loaded = true;

button[1] = global.GP_HORIZONTAL_MOVE;
button[2] = global.GP_VERTICAL_MOVE;
button[3] = global.GP_ACTION;
button[4] = global.GP_JUMP;
button[5] = global.GP_CLIMB;
button[6] = global.GP_HAMMER;
button[7] = global.GP_SPEAR;