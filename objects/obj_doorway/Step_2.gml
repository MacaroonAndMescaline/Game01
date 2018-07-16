/// @description Insert description here
// You can write your code in this editor
if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_player, false, true) != noone
&&(keyboard_check_pressed(global.CONTROL_UP) 
  || keyboard_check_pressed(global.ALT_CONTROL_UP)
  || gamepad_axis_value(0,global.GP_VERTICAL_MOVE) < 0)
{
	global.CAME_FROM = came_from;
    room_goto(leads_to)
}