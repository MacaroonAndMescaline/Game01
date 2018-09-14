/// @description CLIMBING
//Changes to the interactable range of the player
//checking for something in range for climbing
with(pickup_range) {
	//checking for collision of ladder or climbable object
	if(place_meeting(x,y,obj_ground_parent))
			for(var i = 0; i <instance_count; i++){
				if(object_get_parent(instance_id[i].object_index) == obj_ground_parent) {
					if(instance_id[i].climbable) && (instance_id[i].colliding) 
					{
						//checking if ladder or can climb to ledge
						if(instance_id[i].ladder) || (instance_id[i].y < y)
							follow.climb = true;
							
						//if not ladder checking to see what side to climb for climbable blocks
						if(!instance_id[i].ladder) {
							if(instance_id[i].x < x) follow.climb_right = false;
							else follow.climb_right = true;
						}
						
						//else it knows it is a ladder and figures out 
						//which way the ladder is facing
						else {
							if(instance_id[i].y > y) follow.above_ladder = true
							else follow.above_ladder = false
							follow.climb_right = instance_id[i].ladder_face_right;
							follow.ladder = true;
						}
						
						//this is set up for both climbing and ladders
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
//---------------------------------------------------------
//This is the actual climbing==============================
//---------------------------------------------------------
if(climb) 
&& (alarm[1] < 0)
&& (place_free(x + obj_speed,y - obj_speed) || place_free(x - obj_speed, y - obj_speed)) 
&& grounded {
	srpt_disable_platforms();

//this sets up moving the player to the proper position before climbing commences
	if(climb_right) { 
		climbXmove = abs(phy_position_x - climb_x);
		var beforeClimbMove = climbXmove - sprite_width;
	}
	else {
		climbXmove = - abs(phy_position_x - climb_x) + (climb_width - sprite_width);
		var beforeClimbMove = climbXmove + sprite_width;
	}
	 climbYmove = abs(phy_position_y - climb_y) + sprite_height;
	 if(!ladder) phy_position_x += beforeClimbMove;
	//old way just teleports them there
	//phy_position_x += climbXmove;
	//phy_position_y -= climbYmove;
	alarm[1] = 5;
}
else if(ladder) phy_active = false
else climb = false;