//Author: JOHN THOLEN
//This changes the global variables associated for the actual controls the game looks for in the code.
//called by srpt_change_controls
//changes controls for game
if(keyToChange == "up") {global.CONTROL_UP = keyboard_key;}
if(keyToChange == "down") {global.CONTROL_DOWN = keyboard_key;}
if(keyToChange == "left") {global.CONTROL_LEFT = keyboard_key;}
if(keyToChange == "right") {global.CONTROL_RIGHT = keyboard_key;}
if(keyToChange == "action") {global.ACTION = keyboard_key;}
if(keyToChange == "jump") {global.JUMP = keyboard_key;}
if(keyToChange == "climb") {global.CLIMB = keyboard_key;}
if(keyToChange == "attackH") {global.HAMMER = keyboard_key;}
if(keyToChange == "attackS") {global.SPEAR = keyboard_key;}
//only runs when swapping keys
if(swap) {
	if(keySwap == "up") {global.CONTROL_UP = swapBut;}
	if(keySwap == "down") {global.CONTROL_DOWN = swapBut;}
	if(keySwap == "left") {global.CONTROL_LEFT = swapBut;}
	if(keySwap == "right") {global.CONTROL_RIGHT = swapBut;}
	if(keySwap == "action") {global.ACTION = swapBut;}
	if(keySwap == "jump") {global.JUMP = swapBut;}
	if(keySwap == "climb") {global.CLIMB = swapBut;}
	if(keySwap == "attackH") {global.HAMMER = swapBut;}
	if(keySwap == "attackS") {global.SPEAR = swapBut;}
}