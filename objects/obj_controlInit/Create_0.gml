/// @description Opens INI controls

ini_open("controls.ini");

global.CONTROL_LEFT = ini_read_real("controls","left",0);
global.CONTROL_RIGHT= ini_read_real("controls","right",0);
global.CONTROL_DOWN = ini_read_real("controls","down",0);
global.CONTROL_UP= ini_read_real("controls","up",0);
global.ACTION = ini_read_real("controls","action",0);

global.ALT_CONTROL_LEFT = ini_read_real("alternate controls","left",0);
global.ALT_CONTROL_RIGHT= ini_read_real("alternate controls","right",0);
global.ALT_CONTROL_DOWN = ini_read_real("alternate controls","down",0);
global.ALT_CONTROL_UP= ini_read_real("alternate controls","up",0);
global.ALT_ACTION = ini_read_real("alternate controls","action",0);

ini_close();