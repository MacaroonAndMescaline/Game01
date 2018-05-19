/// @description 
/// @author John Tholen

var move = 0;
//keyboad input
if(keyboard_check_pressed(global.ALT_CONTROL_UP) 
	|| keyboard_check_pressed(global.CONTROL_UP) 
	|| gamepad_axis_value(0,gp_axislv) < 0
	&& !controlStickPressed) {
	move = -1;
	controlStickPressed = true;
}
else if(keyboard_check_pressed(global.ALT_CONTROL_DOWN) 
		|| keyboard_check_pressed(global.CONTROL_DOWN)
		|| gamepad_axis_value(0,gp_axislv) > 0
		&& !controlStickPressed) {
	move = 1;
	controlStickPressed = true;
}
else if(keyboard_check_pressed(global.ACTION)
        || keyboard_check_pressed(global.CONFIRM)
		|| gamepad_button_check_pressed(0,gp_face1))
	srpt_menu();
else if(gamepad_axis_value(0,gp_axislv) == 0) controlStickPressed = false;

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
			srpt_menu();
	}
}
//resolution
else if(whichMenu = "Resolution") {
	if(move != 0) {
		if(mpos > array_length_1d(res) - 1) mpos = 0;
		if(mpos < 0) mpos = array_length_1d(res) - 1;
	}
		
}
else if(gamePause && keyboard_check_pressed(global.ESCAPE)) {
		instance_activate_all();
		instance_destroy();
	}
//updating buttons for controls menu
buttons[1] = global.CONTROL_UP;
buttons[2] = global.CONTROL_DOWN;
buttons[3] = global.CONTROL_LEFT;
buttons[4] = global.CONTROL_RIGHT;
buttons[5] = global.ACTION;
buttons[6] = global.BLINK;