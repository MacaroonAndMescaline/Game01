/// @author John Tholen
/// @description Movement
//-----------------------------------------------------------------------
//Controls---------------------------------------------------------------
//-----------------------------------------------------------------------

//keyboard input

//moving and doing actions
if(keyboard_check(global.CONTROL_LEFT) || keyboard_check(global.ALT_CONTROL_LEFT) || (gamepad_axis_value(0,global.GP_HORIZONTAL_MOVE) < 0)) {
	xadd = -1;
	obj_direction_right = false;
	srpt_movement();
}
else if(keyboard_check(global.CONTROL_RIGHT) || keyboard_check(global.ALT_CONTROL_RIGHT) || (gamepad_axis_value(0,global.GP_HORIZONTAL_MOVE) > 0)) {
	xadd = 1;
	obj_direction_right = true;
	srpt_movement();
}
else { 
	xadd = 0; 
}


if(keyboard_check_pressed(global.ACTION) || gamepad_button_check_pressed(0,global.GP_ACTION)) {
	event_user(0);
}
if(keyboard_check_pressed(global.BLINK) || gamepad_button_check_pressed(0,global.GP_BLINK)) {
	with(visionBlackout) { event_user(0); }
}

//Pausing game to show start menu
if(keyboard_check_pressed(global.ESCAPE)) || gamepad_button_check_pressed(0,global.GP_ESCAPE) { //room_goto(rm_splash);
	instance_create_layer(x,y,"MenuLayer",obj_pause);
}