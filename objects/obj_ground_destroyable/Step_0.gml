/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(place_meeting(x,y,obj_hitbox) && destroyable){
	for(var i = 0; i < instance_count; i++) {
		if(object_get_name(instance_id[i].object_index) == "obj_hitbox") {
			with(instance_id[i]) {
				if(hammer) {other.hp -= 1}
			}
		}
	}
}
if(hp <= 0) instance_destroy();
