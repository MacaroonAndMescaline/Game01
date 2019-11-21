//Author: JOHN THOLEN
//This changes the global variables associated for the actual controls the game looks for in the code.
//called by srpt_change_controls
//changes controls for game
if(keyToChange == "horizontal") {global.GP_HORIZONTAL_MOVE = whichButtonPressed;}
if(keyToChange == "vertical") {global.GP_VERTICAL_MOVE = whichButtonPressed;}
if(keyToChange == "action") {global.GP_ACTION = whichButtonPressed;}
if(keyToChange == "jump") {global.GP_JUMP = whichButtonPressed;}
if(keyToChange == "climb") {global.GP_CLIMB = whichButtonPressed;}
if(keyToChange == "attackH") {global.GP_HAMMER = whichButtonPressed;}
if(keyToChange == "attackS") {global.GP_SPEAR = whichButtonPressed;}
//only runs when swapping keys
if(swap) {
	if(keySwap == "horizontal") {global.GP_HORIZONTAL_MOVE = swapBut;}
	if(keySwap == "vertical") {global.GP_VERTICAL_MOVE = swapBut;}
	if(keySwap == "action") {global.GP_ACTION = swapBut;}
	if(keySwap == "jump") {global.GP_JUMP = swapBut;}
	if(keySwap == "climb") {global.GP_CLIMB = swapBut;}
	if(keySwap == "attackH") {global.GP_HAMMER = swapBut;}
	if(keySwap == "attackS") {global.GP_SPEAR = swapBut;}
}