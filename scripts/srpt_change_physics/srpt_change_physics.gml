//disables and renables physics


for(i = 0; i < instance_count; i ++) {
	if(object_is_ancestor(object_get_parent(instance_id[i].object_index), obj_master_physics)) 
		with(instance_id[i]) {
			if(phy_active) phy_active = false;
			else phy_active = true;
			}
}