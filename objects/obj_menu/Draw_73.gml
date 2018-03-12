/// @description SHOWING MENU

draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
draw_set_font(fnt_main_menu);


var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);
var ch = camera_get_view_height(view_camera[0]);

x = cx + cw /2;
y = cy + ch /2 - space * 2;
draw_set_color(c_white);

//drawing main menu
if(whichMenu == "Main") {
	for( m = 0; m < array_length_1d(menu); m += 1)
	{
		if(mpos == m)
			draw_set_color(c_yellow);
		else draw_set_color(c_white);
		draw_text(x, y +(m * space), string(menu[m]));
	}
}
//drawing options menu
else if(whichMenu == "Options") {
	for( m = 0; m < array_length_1d(options); m += 1)
	{
		if(mpos == m)
			draw_set_color(c_yellow);
		else draw_set_color(c_white);
		draw_text(x, y +(m * space), string(options[m]));
	}
}
//drawing beta level selection
else if(whichMenu == "Beta") {
	for( m = 0; m < array_length_1d(beta); m += 1)
	{
		if(mpos == m)
			draw_set_color(c_yellow);
		else draw_set_color(c_white);
		draw_text(x, y +(m * space), string(beta[m]));
	}
}
//controls selection
else if(whichMenu == "Controls"){
	
	for( m = 0; m < array_length_1d(controls); m += 1)
	{
		
		if(mpos == m)
			draw_set_color(c_yellow);
		else 
			draw_set_color(c_white);
		
		if (m ==0) {
			draw_text(x,y, string(controls[0]));
			draw_set_halign(fa_left);
		}
		else {
			draw_text(x - 150, y +(m * space), string(controls[m]));
			draw_text(x + 100, y +(m * space),  + " <" + srpt_key_to_string(buttons[m]) + "> ");
		}
	}
}
//waiting for input
else if(whichMenu == "Waiting for input") {
	for( m = 0; m < array_length_1d(waiting); m += 1)
	{
		draw_text(x, y +(m * space), string(waiting[m]));
	}		
}
//drawing cursor
//if(whichMenu != "Waiting for input")
//	draw_sprite(spr_arrow,0, x-20, y + mpos * space);

