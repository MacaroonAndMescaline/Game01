/// @author John Tholen
/// @description Movement
//-----------------------------------------------------------------------
//Controls---------------------------------------------------------------
//-----------------------------------------------------------------------

//keyboard input

xadd = keyboard_check(vk_right) + keyboard_check(ord("D")) - keyboard_check(vk_left) - keyboard_check(ord("A"));

//moving

if(xadd != 0) {
	if(obj_speed > phy_speed_x) && (obj_direction_right) physics_apply_impulse(x, y, xadd/5, 0);
	else if (-obj_speed < phy_speed_x) &&(!obj_direction_right) physics_apply_impulse(x, y, xadd/5, 0);
//Not needed right now, as phy_speed_x has no real bearing on not sticking to walls due to impulse.
/*	phy_speed_x = xadd * obj_speed;
	if (place_meeting(phy_position_x + phy_speed_x ,phy_position_y,obj_ground_parent)) {
		phy_speed_x = 0;
	}
	*/
}

			
//jumping

if(keyboard_check(vk_space)) && (phy_linear_velocity_y == 0)
	physics_apply_force(x,y,0, -JUMP_SPEED);

