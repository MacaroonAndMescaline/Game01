/// @description Movement
//-----------------------------------------------------------------------------
//moving left and right========================================================
//-----------------------------------------------------------------------------
if(keyboard_check(global.CONTROL_LEFT) 
	|| keyboard_check(global.ALT_CONTROL_LEFT) 
	|| (gamepad_axis_value(0,global.GP_HORIZONTAL_MOVE) < 0)) {
		xadd = -1
		obj_direction_right = false
		srpt_movement_non_physics()
	}
	else if(keyboard_check(global.CONTROL_RIGHT) 
	|| keyboard_check(global.ALT_CONTROL_RIGHT) 
	|| (gamepad_axis_value(0,global.GP_HORIZONTAL_MOVE) > 0)) {
		xadd = 1
		obj_direction_right = true;
		srpt_movement_non_physics();
	}
	else xadd = 0; 
//-----------------------------------------------------------------------------
//action button for picking up objects=========================================
//-----------------------------------------------------------------------------
if keyboard_check_pressed(global.ACTION) 
|| gamepad_button_check_pressed(0,global.GP_ACTION) {
		event_user(0);
}
//-----------------------------------------------------------------------------
//Climbing shit================================================================
//-----------------------------------------------------------------------------
if keyboard_check_pressed(global.CLIMB) 
|| gamepad_button_check_pressed(0,global.GP_CLIMB) {
	event_user(1)
}
//-----------------------------------------------------------------------------
//Pausing game to show start menu==============================================
//-----------------------------------------------------------------------------
if keyboard_check_pressed(global.ESCAPE) 
|| gamepad_button_check_pressed(0,global.GP_ESCAPE) { 
	instance_create_layer(x,y,"MenuLayer",obj_pause);
}
//-----------------------------------------------------------------------------
//gravity======================================================================
//-----------------------------------------------------------------------------
if !place_meeting(x,y,obj_ladder_no_physics) {
	srpt_gravity_collisions_no_physics()
}
//-----------------------------------------------------------------------------
//ladder climbing==============================================================
//-----------------------------------------------------------------------------
else {
	if keyboard_check(global.CONTROL_UP)
	|| keyboard_check(global.ALT_CONTROL_UP)
	|| (gamepad_axis_value(0,global.GP_VERTICAL_MOVE) < 0) {
		if place_meeting(x,y - obj_speed, obj_ground_parent)
		|| !place_meeting(x,y - obj_speed, obj_ladder_no_physics)
			vspd = 0
		else vspd = -climb_speed
	}
	else if keyboard_check(global.CONTROL_DOWN)
	|| keyboard_check(global.ALT_CONTROL_DOWN)
	|| (gamepad_axis_value(0,global.GP_VERTICAL_MOVE) > 0) {
		if place_meeting(x,y + obj_speed, obj_ground_parent)
			vspd = 0
		else vspd = climb_speed
	}
	else vspd = 0
	y += vspd
}
