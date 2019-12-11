//John Tholen
//Changes the resolution and saves it
global.VIEW_PORT_X = argument0;
global.VIEW_PORT_Y = argument1;
window_set_size(argument0,argument1);
display_set_gui_size(argument0,argument1)
ini_open("settings/window.ini");
ini_write_real("resolution","x",argument0);
ini_write_real("resolution","y",argument1);
ini_close();