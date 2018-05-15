//variables for swapping keys
swap = false;

//obtaining what was pressed after initializing this.
//checking to see if key is already bound to another keyboard and setting up swapping them
if(keyboard_key == global.CONTROL_UP && keyToChange != "up") { 
	swap = true; 
	keySwap = "up"; 
	swapBut = srpt_key_obtain();
}
if(keyboard_key == global.CONTROL_DOWN && keyToChange != "down") { 
	swap = true;
	keySwap = "down";
	swapBut = srpt_key_obtain();
}
if(keyboard_key == global.CONTROL_LEFT && keyToChange != "left") { 
	swap = true; 
	keySwap = "left";
	swapBut = srpt_key_obtain();
}
if(keyboard_key == global.CONTROL_RIGHT && keyToChange != "right") {
	swap = true;
	keySwap = "right";
	swapBut = srpt_key_obtain();
}
if(keyboard_key == global.ACTION && keyToChange != "action") { 
	swap = true; 
	keySwap = "action"; 
	swapBut = srpt_key_obtain();
}
//-------------------------------------------------------------
//Normal key change if there is no need for swapping-----------
//-------------------------------------------------------------
if(!swap) {
	ini_open("settings/controls.ini");
	ini_write_real("controls",keyToChange,keyboard_key);
	ini_close();
}
//key change for swapping.
else if(swap){
	ini_open("settings/controls.ini");
	ini_write_real("controls",keyToChange,keyboard_key);
	ini_write_real("controls",keySwap,swapBut);
	ini_close();
}
srpt_key_change();