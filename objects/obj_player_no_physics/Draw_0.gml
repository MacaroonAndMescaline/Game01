///@description Debugging
draw_self()
var xc = camera_get_view_x(view_camera[0]);
var yc = camera_get_view_y(view_camera[0]);
//debugging purposes
draw_text(xc + 100, yc + 100, "FPS = " + string(fps_real) + "\n Grounded = " + string(grounded));