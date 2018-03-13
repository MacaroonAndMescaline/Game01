/// @author John Tholen
/// @description For basic drawing
draw_self();
//if object is picked up.
if(picked_up_item) {
	if(!obj_direction_right)
		draw_sprite_ext(held_sprite,-1, x - held_width/2, y + held_height/2 ,1,1,0,-1,1);
	else
		draw_sprite_ext(held_sprite,-1, x + obj_width + held_width/2, y + held_height/2,1,1,0,-1,1);
}
var xc = camera_get_view_x(view_camera[0]);
var yc = camera_get_view_y(view_camera[0]);
draw_text(xc + 100, yc + 100, "FPS = " + string(fps_real) + "\n Grounded = " + string(grounded));