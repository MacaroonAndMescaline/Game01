//This is for platforms only.
for(var i = 0; i < instance_count; i++) {
	if(object_get_parent(instance_id[i].object_index) == obj_ground_parent) {
		if(instance_id[i].platform) with (instance_id[i]) event_user(0); //disable or enables fixture for platform
	}
}