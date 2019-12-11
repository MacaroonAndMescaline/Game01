/// @description Drawing for each menu item.
// Menu items require mpos whichMenu, an
// You can write your code in this editor

if(loaded) {
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_main_menu);


	var cw = display_get_gui_width();
	var ch = display_get_gui_height();

	x = cw /2;
	y = ch /2 - space * 2;
	draw_set_color(c_white);
//-----------------------------------------------------------------------------------------
//New optimized code
//-----------------------------------------------------------------------------------------
	
		for( m = 0; m < array_length_1d(menu); m ++)
			{
			
				if(mpos == m)
					draw_set_color(c_yellow);
				else draw_set_color(c_white);
				if (m < 4)
					draw_text(x, y +(m * space), string(menu[m]));
				else {
					draw_text(x, y + (m* space), string(menu[m]));
					draw_sprite(spr_slider_bar, 0, x, y + (m * space + 20));
					if(m == 4) draw_sprite(spr_slider_icon,0,(x - 50) + 100 * global.MASTER_VOLUME, y + (m *space + 20) );
					if(m == 5) draw_sprite(spr_slider_icon,0,(x - 50) + 100 * global.MUSIC_VOLUME, y + (m * space + 20) );
					if(m == 6) draw_sprite(spr_slider_icon,0,(x - 50) + 100 * global.SOUNDFX_VOLUME, y + (m * space + 20) );
					if(m == 7) draw_sprite(spr_slider_icon,0,(x - 50) + 100 * global.GAME_SPEED, y + (m * space + 20) );
				}
			}
}
