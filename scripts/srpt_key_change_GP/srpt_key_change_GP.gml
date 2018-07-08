//Author: JOHN THOLEN
//This changes the global variables associated for the actual controls the game looks for in the code.
//called by srpt_change_controls
//changes controls for game
if(keyToChange == "horizontal") {	
	global.GP_HORIZONTAL_MOVE = whichButtonPressed;
}

if(keyToChange == "vertical") {	
	global.GP_VERTICAL_MOVE = whichButtonPressed;
}

if(keyToChange == "action") {	
	global.GP_ACTION = whichButtonPressed;
}

if(keyToChange == "blink") {	
	global.GP_BLINK = whichButtonPressed;
}

if(keyToChange == "climb") {
	global.GP_CLIMB = whichButtonPressed;
}
//only runs when swapping keys
if(swap) {
	if(keySwap == "horizontal") {	
		global.GP_HORIZONTAL_MOVE = swapBut;
	}

	if(keySwap == "vertical") {	
		global.GP_VERTICAL_MOVE = swapBut;
	}

	if(keySwap == "action") {	
		global.GP_ACTION = swapBut;
	}
	if(keySwap == "blink") {
		global.GP_BLINK = swapBut;
	}
	if(keySwap == "climb") {
		global.GP_CLIMB = swapBut;
	}
}