/// @description 
// You can write your code in this editor

whichMenu = "Gamepad";
menu = ["-back-","horizontal move","vertical move", "action", "blink", "climb"];
waiting= ["PLEASE PRESS ANY BUTTON ON GAMEPAD","Press Enter/Escape to cancel", "Press Start on Gamepad to cancel"];
loaded = true;

button[1] = global.GP_HORIZONTAL_MOVE;
button[2] = global.GP_VERTICAL_MOVE;
button[3] = global.GP_ACTION;
button[4] = global.GP_BLINK;
button[5] = global.GP_CLIMB;