/// @author John Tholen
/// @description Movement
//-----------------------------------------------------------------------
//Controls---------------------------------------------------------------
//-----------------------------------------------------------------------
//keyboard input---------------------------------------------------------
//-----------------------------------------------------------------------
if(!climb) {
//----------------------------------------
//moving right and left-------------------
//----------------------------------------
	if(keyboard_check(global.CONTROL_LEFT) 
	|| keyboard_check(global.ALT_CONTROL_LEFT) 
	|| (gamepad_axis_value(0,global.GP_HORIZONTAL_MOVE) < 0)) {
		xadd = -1;
		obj_direction_right = false;
		srpt_movement();
	}
	else if(keyboard_check(global.CONTROL_RIGHT) 
	|| keyboard_check(global.ALT_CONTROL_RIGHT) 
	|| (gamepad_axis_value(0,global.GP_HORIZONTAL_MOVE) > 0)) {
		xadd = 1;
		obj_direction_right = true;
		srpt_movement();
	}
	else { 
		xadd = 0; 
	}
//---------------------------------------
//Doing an action------------------------
//---------------------------------------
	if(keyboard_check_pressed(global.ACTION) || gamepad_button_check_pressed(0,global.GP_ACTION)) {
		event_user(0);
	}
//---------------------------------------
//Blinking-------------------------------
//---------------------------------------
	if(keyboard_check_pressed(global.BLINK) || gamepad_button_check_pressed(0,global.GP_BLINK)) {
		with(visionBlackout) { event_user(0); }
	}
//---------------------------------------
//Climbing shit--------------------------
//---------------------------------------
	if(keyboard_check_pressed(global.CLIMB)) || (gamepad_button_check_pressed(0,global.GP_CLIMB)) {
		event_user(1)
	}
} 
else {
	phy_linear_velocity_y = 0;
//--------------------------------------------
//climbing ledge------------------------------
//--------------------------------------------
	if(!ladder) {
//-----------------------------------------------------
//moving the player model up until to reaches the ledge
//-----------------------------------------------------
		if(!climbphase2) {
			if(phy_position_y > climb_y)
				phy_position_y -= obj_speed;
//-----------------------------------------------------------------------------------
//phase 2 of climbing where x & y are updated to look like it is snapped to the ledge
//-----------------------------------------------------------------------------------
			else {
				phy_position_y = climb_y;
				if(climb_right)
					while(!place_meeting(phy_position_x + 1,phy_position_y,obj_ground_parent))
						phy_position_x += obj_speed;
				else while(!place_meeting(phy_position_x - 1, phy_position_y,obj_ground_parent))
					phy_position_x -= obj_speed;
				climbphase2 = true;
			}
		}
//--------------------------------------------
//Waiting for input to end phase 2 of climbing
//--------------------------------------------
		else if (keyboard_check_pressed(global.ACTION)) 
		|| (keyboard_check_pressed(global.CONTROL_UP))
		|| (keyboard_check_pressed(global.ALT_CONTROL_UP))
		|| (gamepad_button_check_pressed(0,global.GP_ACTION))
		|| (gamepad_axis_value(0,global.GP_VERTICAL_MOVE) < 0)
		|| (keyboard_check_pressed(global.CLIMB))
		|| (gamepad_button_check_pressed(0,global.GP_CLIMB)) {
			phy_position_x += climbXmove;
			phy_position_y -= sprite_height;
			climb = false;
			climbphase2 = false;
			ladder = false;
			srpt_disable_platforms();
		} else phy_position_y = climb_y;
	}
//-----------------------------------------------
//ladder climbing--------------------------------
//-----------------------------------------------
	else {
//------------------------------------------------------
//moving to proper location before allowing for movement
//------------------------------------------------------
		if(!climbphase2) {
			if(above_ladder) phy_position_y = climb_y;
			if(climb_right) phy_position_x = climb_x + climb_width;
			else phy_position_y = climb_x - sprite_width;
			climbphase2 = true;
		}
//---------------------------
//Allowing moving up and down
//---------------------------
		else {
			var yadd = 0;
			if(keyboard_check_pressed(global.CONTROL_UP) 
			|| keyboard_check_pressed(global.ALT_CONTROL_UP)
			|| gamepad_axis_value(0,global.GP_VERTICAL_MOVE) < 0){
				var yadd = -1;
			} else if(keyboard_check_pressed(global.CONTROL_DOWN) 
			|| keyboard_check_pressed(global.ALT_CONTROL_DOWN)
			|| gamepad_axis_value(0,global.GP_VERTICAL_MOVE) > 0) {
				var yadd = 1;
			}
			phy_position_y += obj_speed * yadd;
			if(phy_position_y < climb_y) {
				phy_position_y = climb_y;
				phy_position_x += climbXmove;
				phy_position_y -= sprite_height;
				climb = false;
				climbphase2 = false;
				ladder = false;
				phy_active = true;
				srpt_disable_platforms();
			} else if(place_meeting(x,y + obj_speed,obj_ground_parent)) {
				climb = false;
				climbphase2 = false;
				ladder = false;
				phy_active = true;
				srpt_disable_platforms();
			}
		}
	}
}
//-----------------------------------------------
//Pausing game to show start menu----------------
//-----------------------------------------------
if(keyboard_check_pressed(global.ESCAPE)) || gamepad_button_check_pressed(0,global.GP_ESCAPE) { 
	//room_goto(rm_splash);
	instance_create_layer(x,y,"MenuLayer",obj_pause);
}