//John Tholen
//Does the thing
swap = false;

//Checking for button on another command
if(whichButtonPressed == global.GP_HORIZONTAL_MOVE && keyToChange != "horizontal") {
	keySwap = "horizontal";
	swap = true;
	swapBut = srpt_key_obtain_GP();
}
else if(whichButtonPressed == global.GP_VERTICAL_MOVE && keyToChange != "vertical") {
	keySwap = "vertical";
	swap = true;
	swapBut = srpt_key_obtain_GP();
}
else if(whichButtonPressed == global.GP_ACTION && keyToChange != "action") {
	keySwap = "action";
	swap = true;
	swapBut = srpt_key_obtain_GP();
}
else if(whichButtonPressed == global.GP_JUMP && keyToChange != "jump") {
	keySwap = "jump";
	swap = true;
	swapBut = srpt_key_obtain_GP();
}
else if(whichButtonPressed == global.GP_CLIMB && keyToChange != "climb") {
	keySwap = "climb";
	swap = true;
	swapBut = srpt_key_obtain_GP();
}
else if(whichButtonPressed == global.GP_HAMMER && keyToChange != "attackH") {
	keySwap = "attackH"
	swap = true;
	swapBut = srpt_key_obtain_GP();
}
else if(whichButtonPressed == global.GP_SPEAR && keyToChange != "attackS") {
	keySwap = "attackS"
	swap = true;
	swapBut = srpt_key_obtain_GP();
}
//---------
//------------
//---------
//----------------------------------------------------------|---        /
//Normal button change if there is no need for swapping-----|----  -----  --  -
//----------------------------------------------------------|---        \
//--------                                                                 \
//-----------
//--------
if(!swap) {
	ini_open("settings/controls.ini");
	ini_write_real("gamepad",keyToChange,whichButtonPressed);
	ini_close();
}
//key change for swapping.
else if(swap){
	ini_open("settings/controls.ini");
	ini_write_real("gamepad",keyToChange,whichButtonPressed);
	ini_write_real("gamepad",keySwap,swapBut);
	ini_close();
}
srpt_key_change_GP();