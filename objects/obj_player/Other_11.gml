/// @description CLIMBING
// You can write your code in this editor

with(pickup_range) {
	if(place_meeting(x,y,obj_ground_parent))
			for(var i = 0; i <instance_count; i++){
				if(object_get_parent(instance_id[i].object_index) == obj_ground_parent) {
					if(instance_id[i].climbable) && (instance_id[i].colliding) 
					&& (instance_id[i].y < y) { 
						follow.climb = true;
						if(instance_id[i].x < x)
							follow.climb_right = false;
						else follow.climb_right = true;
						follow.climb_x = instance_id[i].x;
						follow.climb_y = instance_id[i].y;
						follow.climb_width = instance_id[i].sprite_width;
						break;
					}
				}
				else { 
					follow.climb = false;
				}
			}
}
if(climb) 
&& (alarm[1] < 0)
&& (place_free(x + obj_speed,y - obj_speed) || place_free(x - obj_speed, y - obj_speed)) 
&& grounded {
	srpt_disable_platforms();
	if(climb_right) { 
		climbXmove = abs(phy_position_x - climb_x);
		var beforeClimbMove = climbXmove - sprite_width;
	}
	else {
		climbXmove = - abs(phy_position_x - climb_x) + (climb_width - sprite_width);
		var beforeClimbMove = climbXmove + sprite_width;
	}
	 climbYmove = abs(phy_position_y - climb_y) + sprite_height;
	 phy_position_x += beforeClimbMove;
	//old way just teleports them there
	//phy_position_x += climbXmove;
	//phy_position_y -= climbYmove;
	alarm[1] = 5;
}
else climb = false;