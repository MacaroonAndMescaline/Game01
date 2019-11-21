/// @description Scan for stuff in beginning
// You can write your code in this editor
for(var i = 0; i < instance_count; i++) {
	if(object_get_name(instance_id[i].object_index) == "obj_standing_still_enemy") {
		enemy_exist = true;
		found = true;
	}
	if (found) break;
}
	if(!found) enemy_exist = false;
	else found = false;