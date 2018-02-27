/// @author John Tholen
/// @description creating basic needs for player object
phy_fixed_rotation = true;

//objects being picked up variables
held_object = 0;
held_sprite = 0;
held_name = 0;
held_width = 0;
held_height = 0;

//physics properties
phy_linear_damping = 0.1;
alarm[0] = 0;

//creating a pickup range for the interactables
pickup_range = instance_create_layer(x,y,"Player",obj_interactable_trigger)
with(pickup_range){
	image_xscale = other.obj_width/sprite_width + .3;
	image_yscale = other.obj_height/sprite_height + .3;
	follow = other.id;
}
picked_up_item = false;