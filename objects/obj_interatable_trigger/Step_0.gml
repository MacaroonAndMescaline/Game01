/// @author John Tholen
/// @description Follow objects creator

//following
for(var i = 0; i < instance_count; i++) {
	if(instance_id[i] == follow) {
		x = instance_id[i].x;
		y = instance_id[i].y;
		image_angle = instance_id[i].image_angle;
	}
}

//colliding with player
if(place_meeting(x,y,obj_player_parent)) colliding = true;
else colliding = false;