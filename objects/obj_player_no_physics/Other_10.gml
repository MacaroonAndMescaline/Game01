/// @description Picking up/throwing object
// You can write your code in this editor

//-----------------------------------------------------------------------
//Throwing a held object ------------------------------------------------
//-----------------------------------------------------------------------
if(picked_up_item) && (alarm[0] <0){
	if(obj_direction_right)
		with(instance_create_layer(x + hspd + 1 + obj_player_no_physics.obj_width, y , "Ground", held_object)){
			physics_apply_force(x, y, obj_player_no_physics.throw_speed, - obj_player_no_physics.throw_speed/1.5);
		}
	else
		with(instance_create_layer(x + hspd - held_width - 1, y, "Ground", held_object)){
			physics_apply_force(x, y, - obj_player_no_physics.throw_speed, - obj_player_no_physics.throw_speed/1.5);
		}
	picked_up_item = false;
	alarm[0] = 5;
}
//-----------------------------------------------------------------------
//Picking up and object -------------------------------------------------
//-----------------------------------------------------------------------
if(!picked_up_item) && (alarm[0] < 0) {
	with(pickup_range){
		if(place_meeting(x,y,obj_interactable_parent))
			for(var i = 0; i <instance_count; i++){
				if(object_get_parent(instance_id[i].object_index) == obj_interactable_parent) {
					if(instance_id[i].colliding) && (instance_id[i].throwable){
						follow.held_name = object_get_name(instance_id[i]);
						follow.held_object = instance_id[i].object_index;
						follow.held_sprite = instance_id[i].sprite_index;
						follow.held_width = instance_id[i].sprite_width;
						follow.held_height = instance_id[i].sprite_height;
						follow.picked_up_item = true;
						follow.alarm[0] = 5;
						instance_destroy(instance_id[i]);
						break;
					}
				}
			}
	}
}