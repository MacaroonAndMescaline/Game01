/// @author John Tholen
/// @description Movement
//-----------------------------------------------------------------------
//Controls---------------------------------------------------------------
//-----------------------------------------------------------------------



//keyboard input

xadd = keyboard_check(vk_right) + keyboard_check(ord("D")) - keyboard_check(vk_left) - keyboard_check(ord("A"));

if(xadd < 0)
	obj_direction_right = false;
else if(xadd > 0)
	obj_direction_right = true;

//moving

//checking if player is grounded
if (phy_linear_velocity_y == 0)grounded = true;
else grounded = false;

if(xadd != 0) {
	srpt_movement();
//	if(!place_meeting(x + xadd * obj_speed/2,y,obj_ground_parent)){
//		if(obj_speed > phy_speed_x) && (obj_direction_right) physics_apply_impulse(x, y, xadd/5, 0);
//		else if (-obj_speed < phy_speed_x) &&(!obj_direction_right) physics_apply_impulse(x, y, xadd/5, 0);
	}
//Not needed right now, as phy_speed_x has no real bearing on not sticking to walls due to impulse.
/*	phy_speed_x = xadd * obj_speed;
	if (place_meeting(phy_position_x + phy_speed_x ,phy_position_y,obj_ground_parent)) {
		phy_speed_x = 0;
	}
	*/
//}


//jumping only while grounded


if(keyboard_check(vk_space)) && (grounded){
	physics_apply_force(x,y,0, -JUMP_SPEED);
	grounded = false;
} 
