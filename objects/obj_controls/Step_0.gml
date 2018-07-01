/// @description Own step event for options
// You can write your code in this editor
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
else if((keyboard_check_pressed(global.ACTION)
        || keyboard_check_pressed(global.CONFIRM)
		|| gamepad_button_check_pressed(0,gp_face1))
		&& !(whichMenu = "Waiting for input"))
	srpt_menu();

if(gamepad_axis_value(0,gp_axislv) == 0) controlStickPressed = false;

mpos += move;



if(move !=0) && !(whichMenu = "Waiting for input") {
	if(mpos > array_length_1d(menu) - 1) mpos = 0;
	if(mpos < 0) mpos = array_length_1d(menu) - 1;
}

else if(whichMenu = "Waiting for input") {
	if(alarm[0] < 0) {
		if(keyboard_key) {
			if((!keyboard_check_pressed(global.ESCAPE)
			&& !keyboard_check_pressed(global.CONFIRM))
			&& keyboard_check_pressed(keyboard_key))
				srpt_menu();
			else if(keyboard_check_pressed(keyboard_key))
				whichMenu = "Controls";
		}
	}
}

//updating buttons for controls menu
buttons[1] = global.CONTROL_UP;
buttons[2] = global.CONTROL_DOWN;
buttons[3] = global.CONTROL_LEFT;
buttons[4] = global.CONTROL_RIGHT;
buttons[5] = global.ACTION;
buttons[6] = global.BLINK;