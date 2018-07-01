/// @description Options unique step
/// @author John Tholen

var move = 0;
barMove = 0;
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
	
//options slider bar
if (mpos > 3)
   && (keyboard_check_pressed(global.CONTROL_RIGHT)
   || keyboard_check_pressed(global.ALT_CONTROL_RIGHT)
   || (gamepad_axis_value(0,gp_axislh) > 0))
   && !controlStickPressed {
	   barMove = 1;
	   controlStickPressed = true;
	   srpt_menu();
}
else if (mpos > 3)
   && (keyboard_check_pressed(global.CONTROL_LEFT)
   || keyboard_check_pressed(global.ALT_CONTROL_LEFT)
   || (gamepad_axis_value(0,gp_axislh) < 0))
   && !controlStickPressed {
	   barMove = -1;
	   controlStickPressed = true;
	   srpt_menu();
}

if(gamepad_axis_value(0,gp_axislv) == 0) controlStickPressed = false;

mpos += move;
//-----------------------------------------------------------------------------------------
//new cursor movement
//-----------------------------------------------------------------------------------------
if(move !=0) {
	if(mpos > array_length_1d(menu) - 1) mpos = 0;
	if(mpos < 0) mpos = array_length_1d(menu) - 1;
}