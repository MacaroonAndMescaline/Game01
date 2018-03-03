/// @description 
/// @author John Tholen

var move = 0;

//keyboard input
if(keyboard_check_pressed(global.ALT_CONTROL_UP) || keyboard_check_pressed(global.CONTROL_UP))
	move = -1;
else if(keyboard_check_pressed(global.ALT_CONTROL_DOWN) || keyboard_check_pressed(global.CONTROL_DOWN))
	move = 1;
else if(keyboard_check_pressed(global.ALT_ACTION) || keyboard_check_pressed(global.ACTION))
	srpt_main_menu();

//menu movement
mpos += move;
if(whichMenu = "Main") {
	if(move !=0) {
		if(mpos > array_length_1d(menu) - 1) mpos = 0;
		if(mpos < 0) mpos = array_length_1d(menu) - 1;
	}
}
else if(whichMenu = "Options") {
	if(move !=0) {
		if(mpos > array_length_1d(options) - 1) mpos = 0;
		if(mpos < 0) mpos = array_length_1d(options) - 1;
	}
}