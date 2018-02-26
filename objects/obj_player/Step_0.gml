/// @author John Tholen
/// @description Movement and throwing
//-----------------------------------------------------------------------
//Controls---------------------------------------------------------------
//-----------------------------------------------------------------------

//keyboard input

xadd = keyboard_check(vk_right) + keyboard_check(ord("D")) - keyboard_check(vk_left) - keyboard_check(ord("A"));

//moving

if(xadd != 0) {
	phy_speed_x = xadd * obj_speed;
	if (place_meeting(phy_position_x + phy_speed_x ,phy_position_y,obj_ground_parent)) {
		phy_speed_x = 0;
	}
}

			
//jumping

if(keyboard_check(vk_space)) && (phy_linear_velocity_y == 0)
	physics_apply_force(x,y,0, -JUMP_SPEED);

//-----------------------------------------------------------------------
//Throwing a held object ------------------------------------------------
//-----------------------------------------------------------------------

if(keyboard_check_pressed(vk_shift)) {
	if(picked_up_item) {
		if(obj_direction_right)
			with(instance_create_layer(x + phy_speed_x + 1 + obj_player.obj_width, y , "Player", held_object)){
				physics_apply_force(x + obj_width/2, y + obj_height/2, obj_player.throw_speed, - obj_player.throw_speed/1.5);
			}
		else
			with(instance_create_layer(x + phy_speed_x - held_width - 1, y, "Player", held_object)){
				physics_apply_force(x + obj_width/2, y + obj_height/2, - obj_player.throw_speed, - obj_player.throw_speed/1.5);
			}
		picked_up_item = false;
	}
}