/// @author John Tholen
/// @description Insert description here
create = instance_create_layer(x+obj_width/2,y+obj_height/2,"Player",obj_interatable_trigger);
with (create){
	image_xscale = other.obj_width/sprite_width + .15;
	image_yscale = other.obj_height/sprite_height + .15;
	follow = other.id;
}