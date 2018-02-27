/// @author John Tholen
/// @description Follow objects creator

//following
for(var i = 0; i < instance_count; i++) {
	if(instance_id[i] == follow) {
		x = instance_id[i].x +instance_id[i].obj_width/2;
		y = instance_id[i].y +instance_id[i].obj_height/2;
		image_angle = instance_id[i].image_angle;
	}
}

//colliding with player
//not used code because player now has this object.
/*
if(place_meeting(x,y,obj_player_parent)) colliding = true;
else colliding = false;
*/