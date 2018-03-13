

//obtaining what was pressed after initializing this.


ini_open("settings/controls.ini");
ini_write_real("controls",keyToChange,keyboard_key);
ini_close();

if(keyToChange == "up") {	
	global.CONTROL_UP = keyboard_key;
}

if(keyToChange == "down") {	
	global.CONTROL_DOWN = keyboard_key;
}

if(keyToChange == "left") {	
	global.ALT_CONTROL_LEFT = keyboard_key;
}

if(keyToChange == "right") {	
	global.CONTROL_RIGHT = keyboard_key;
}

if(keyToChange == "action") {	
	global.ACTION = keyboard_key;
}