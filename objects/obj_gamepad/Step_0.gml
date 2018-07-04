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
		&& !(whichMenu = "Waiting for input GP"))
	srpt_menu();

if(gamepad_axis_value(0,gp_axislv) == 0) controlStickPressed = false;

mpos += move;



if(move !=0) && !(whichMenu = "Waiting for input GP") {
	if(mpos > array_length_1d(menu) - 1) mpos = 0;
	if(mpos < 0) mpos = array_length_1d(menu) - 1;
}

else if(whichMenu = "Waiting for input GP") {
	if(alarm[0] < 0) {
		for(var j = 0; j < array_length_1d(global.GP_BUTTONS); j++) {
		if(keyboard_key) {
			if((!keyboard_check_pressed(global.ESCAPE)
			&& !keyboard_check_pressed(global.CONFIRM)
			&& !gamepad_button_check_pressed(0,global.GP_ESCAPE))
			&& keyboard_check_pressed(keyboard_key))
				srpt_menu();
			else if(keyboard_check_pressed(keyboard_key))
				whichMenu = "Controls";
		}
		}
	}
}

//updating buttons for controls menu
button[1] = global.GP_HORIZONTAL_MOVE;
button[2] = global.GP_VERTICAL_MOVE;
button[3] = global.GP_ACTION;
button[4] = global.GP_BLINK;