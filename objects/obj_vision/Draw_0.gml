/// @description Insert description here
// You can write your code in this editor
var xc = camera_get_view_x(view_camera[0]);
var yc = camera_get_view_y(view_camera[0]);

if(!vision)
	draw_rectangle_color(xc,yc,xc + camera_get_view_width(view_camera[0]), yc + camera_get_view_height(view_camera[0]),c_black,c_fuchsia,c_lime,c_orange,false);