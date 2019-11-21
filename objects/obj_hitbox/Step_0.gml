/// @description follow player / wall sticking
//n^2 complexity........ :(
for(var i = 0; i < instance_count; i++) {
		if(instance_id[i] == follow) {
		if(spear && alarm[1] < 0) 
			if place_meeting(x,y,obj_ground_parent) {
				var colliding_ground_id = instance_place(x,y,obj_ground_parent)
				for(var j = 0; j < instance_count; j++)
					if(instance_id[j] == colliding_ground_id) {
						with(instance_id[j]) {
							other.wall_stickable = stickable_wall;
						}
					}
				if(wall_stickable){
					wall_stuck = true;
					with(instance_id[i]) wall_stuck = true;
				}
		}
		else {wall_stuck = false; alarm[1] = delay; }
		
		if(instance_id[i].obj_direction_right){ x = instance_id[i].x +instance_id[i].obj_width; image_xscale =1;}
		else { x = instance_id[i].x; image_xscale = -1;}
		y = instance_id[i].y;
		image_angle = instance_id[i].image_angle;
	}
}