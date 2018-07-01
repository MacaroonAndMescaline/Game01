/// @description Drawing for each menu item.
// Menu items require mpos whichMenu, an
// You can write your code in this editor

if(loaded) {
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
//-----------------------------------------------------------------------------------------
//New optimized code
//-----------------------------------------------------------------------------------------
	if !(whichMenu == "Waiting for input") {
		for( m = 0; m < array_length_1d(menu); m += 1)
			{
			
				if(mpos == m)
					draw_set_color(c_yellow);
				else draw_set_color(c_white);
				if !(whichMenu == "Controls") {
					if ! (whichMenu == "Options") || (m < 4)
						draw_text(x, y +(m * space), string(menu[m]));
					else {
						draw_text(x, y + (m* space), string(menu[m]));
						draw_sprite(spr_slider_bar, 0, x, y + (m * space + 20));
						if(m == 5) draw_sprite(spr_slider_icon,0,(x - 50) + 100 * global.MUSIC_VOLUME, y + (m * space + 20) );
						if(m == 6) draw_sprite(spr_slider_icon,0,(x - 50) + 100 * global.SOUNDFX_VOLUME, y + (m * space + 20) );
					}
				}
				else {
						if (m == 0) {
						draw_text(x,y, string(menu[0]));
						draw_set_halign(fa_left);
					}
					else {
						draw_text(x - 150, y +(m * space), string(menu[m]));
						draw_text(x + 100, y +(m * space),  + " <" + srpt_key_to_string(buttons[m]) + "> ");
					}
				}
			}
	}
	else if(whichMenu == "Waiting for input") {
		for( m = 0; m < array_length_1d(waiting); m += 1)
		{
			draw_text(x, y +(m * space), string(waiting[m]));
		}		
	}
}
