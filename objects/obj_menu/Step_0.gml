/// @description 
/// @author John Tholen

var move = 0;

//keyboard input
if(keyboard_check_pressed(global.ALT_CONTROL_UP) || keyboard_check_pressed(global.CONTROL_UP))
	move = -1;
else if(keyboard_check_pressed(global.ALT_CONTROL_DOWN) || keyboard_check_pressed(global.CONTROL_DOWN))
	move = 1;
else if(keyboard_check_pressed(global.ACTION)
        || keyboard_check_pressed(global.CONFIRM))
	srpt_main_menu();

//menu movement
mpos += move;
if(whichMenu = "Main") {
	if(move !=0) {
		if(mpos > array_length_1d(menu) - 1) mpos = 0;
		if(mpos < 0) mpos = array_length_1d(menu) - 1;
	}
}
//options movement
else if(whichMenu = "Options") {
	if(move !=0) {
		if(mpos > array_length_1d(options) - 1) mpos = 0;
		if(mpos < 0) mpos = array_length_1d(options) - 1;
	}
}
//Beta level selection movement
else if(whichMenu = "Beta") {
	if(move !=0) {
		if(mpos > array_length_1d(beta) - 1) mpos = 0;
		if(mpos < 0) mpos = array_length_1d(beta) - 1;
	}
}
else if(whichMenu = "Controls") {
	if(move !=0) {
		if(mpos > array_length_1d(controls) - 1) mpos = 0;
		if(mpos < 0) mpos = array_length_1d(controls) - 1;
	}	
}
//changing controls
else if(whichMenu = "Waiting for input") {
	if(alarm[0] < 0) {
		if(keyboard_key)
			if(keyboard_check_pressed(keyboard_key))
			srpt_main_menu();
	}
}

//updating buttons for controls menu
buttons[1] = global.CONTROL_UP;
buttons[2] = global.CONTROL_DOWN;
buttons[3] = global.CONTROL_LEFT;
buttons[4] = global.CONTROL_RIGHT;
buttons[5] = global.ACTION;