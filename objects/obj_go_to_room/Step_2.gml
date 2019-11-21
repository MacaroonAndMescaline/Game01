/// @description Insert description here
// You can write your code in this editor
if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_player, false, true) != noone
{
	global.CAME_FROM = came_from;
    room_goto(leads_to)
}