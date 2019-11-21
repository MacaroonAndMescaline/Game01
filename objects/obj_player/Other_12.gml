/// @description Hammer attack
// You can write your code in this editor
for(var i = 0; i < instance_count; i++) {
	if(instance_id[i] == hitbox) {
		with(instance_id[i]){
			attack_direction_right = other.obj_direction_right;
			event_user(0);
		}
	}
}