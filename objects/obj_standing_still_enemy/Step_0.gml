/// @description checking for damage
// You can write your code in this editor
if(place_meeting(x,y,obj_friend_parent)) hp -= 1;
if(hp <= 0) instance_destroy();