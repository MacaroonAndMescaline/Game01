/// @author John Tholen
/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_shift)) && (!picked_up_item){
	held_name = object_get_name(other.object_index);
	held_object = other.object_index;
	held_sprite = other.sprite_index;
	held_width = other.sprite_width;
	held_height = other.sprite_height;
	with (other) instance_destroy();
	picked_up_item = true;
}