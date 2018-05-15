/// @description Opens INI controls

ini_open("settings/controls.ini");

//Main controls
global.CONTROL_LEFT = ini_read_real("controls","left",0);
global.CONTROL_RIGHT= ini_read_real("controls","right",0);
global.CONTROL_DOWN = ini_read_real("controls","down",0);
global.CONTROL_UP= ini_read_real("controls","up",0);
global.ACTION = ini_read_real("controls","action",0);
global.CONFIRM = ini_read_real("controls","confirm",0);
global.ESCAPE = ini_read_real("controls","escape",0);

//Secondary Controls
global.ALT_CONTROL_LEFT = ini_read_real("alternate controls","left",0);
global.ALT_CONTROL_RIGHT= ini_read_real("alternate controls","right",0);
global.ALT_CONTROL_DOWN = ini_read_real("alternate controls","down",0);
global.ALT_CONTROL_UP= ini_read_real("alternate controls","up",0);


//xbox controller controls
ini_close();

ini_open("settings/window.ini")
//Resolution and other settings
global.VIEW_PORT_X = ini_read_real("resolution","x",1280);
global.VIEW_PORT_Y = ini_read_real("resolution","y",720);
global.FULLSCREEN = ini_read_real("resolution","fullscreen",0);
window_set_size(global.VIEW_PORT_X,global.VIEW_PORT_Y);
window_set_fullscreen(global.FULLSCREEN);
ini_close();

//initialize all button as numbers
global.STRING_OF_KEY[0] = pointer_null;
//global.STRING_OF_KEY[] = ;

//controller
gamepad_set_axis_deadzone(0,0.7);

//disable cursor on screen
window_set_cursor(cr_none);