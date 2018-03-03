/// @description SHOWING MENU

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_main_menu);


var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);
var ch = camera_get_view_height(view_camera[0]);

x = cx + cw /2;
y = cy + ch /3;
draw_set_color(c_white);

if(whichMenu = "Main") {
	for( m = 0; m < array_length_1d(menu); m += 1)
	{
		draw_text(x, y +(m * space), string(menu[m]));
	}
}
else if(whichMenu == "Options") {
	for( m = 0; m < array_length_1d(options); m += 1)
	{
		draw_text(x, y +(m * space), string(options[m]));
	}
}
draw_sprite(spr_arrow,0, x-20, y + mpos * space);
