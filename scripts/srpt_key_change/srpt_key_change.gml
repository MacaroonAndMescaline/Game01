
//changes controls for game
if(keyToChange == "up") {	
	global.CONTROL_UP = keyboard_key;
}

if(keyToChange == "down") {	
	global.CONTROL_DOWN = keyboard_key;
}

if(keyToChange == "left") {	
	global.CONTROL_LEFT = keyboard_key;
}

if(keyToChange == "right") {	
	global.CONTROL_RIGHT = keyboard_key;
}

if(keyToChange == "action") {	
	global.ACTION = keyboard_key;
}
//only runs when swapping keys
if(swap) {
	if(keySwap == "up") {	
		global.CONTROL_UP = swapBut;
	}

	if(keySwap == "down") {	
		global.CONTROL_DOWN = swapBut;
	}

	if(keySwap == "left") {	
		global.CONTROL_LEFT = swapBut;
	}

	if(keySwap == "right") {	
		global.CONTROL_RIGHT = swapBut;
	}

	if(keySwap == "action") {	
		global.ACTION = swapBut;
	}
}