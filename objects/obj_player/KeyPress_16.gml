/// @description Insert description here
// You can write your code in this editor

//-----------------------------------------------------------------------
//Throwing a held object ------------------------------------------------
//-----------------------------------------------------------------------
if(picked_up_item) && (alarm[0] <0){
	if(obj_direction_right)
		with(instance_create_layer(x + phy_speed_x + 1 + obj_player.obj_width, y , "Player", held_object)){
			physics_apply_force(x + obj_width/2, y + obj_height/2, obj_player.throw_speed, - obj_player.throw_speed/1.5);
		}
	else
		with(instance_create_layer(x + phy_speed_x - held_width - 1, y, "Player", held_object)){
			physics_apply_force(x + obj_width/2, y + obj_height/2, - obj_player.throw_speed, - obj_player.throw_speed/1.5);
		}
	picked_up_item = false;
	alarm[0] = 5;
}
//-----------------------------------------------------------------------
//Picking up and object -------------------------------------------------
//-----------------------------------------------------------------------
if(place_meeting(x,y,obj_interatable_trigger))
if(!picked_up_item) && (alarm[0] < 0) {
	if(place_meeting(x,y,obj_interatable_trigger)) {
		for(var i = 0; i <instance_count; i++){
			if(object_get_name(instance_id[i].object_index) == "obj_interatable_trigger") {
				if(instance_id[i].colliding) {
					held_name = object_get_name(instance_id[i].follow);
					held_object = instance_id[i].follow.object_index;
					held_sprite = held_object.sprite_index;
					held_width = instance_id[i].follow.sprite_width;
					held_height = instance_id[i].follow.sprite_height;
					with(held_object) instance_destroy();
					picked_up_item = true;
					alarm[0] = 5;
					break;
				}
			}
		}
	}
}
/*	held_name = object_get_name(other.object_index);
	held_object = other.object_index;
	held_sprite = other.sprite_index;
	held_width = other.sprite_width;
	held_height = other.sprite_height;
	with (other) instance_destroy();
	picked_up_item = true; 
} */