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
	if !(whichMenu == "Waiting for input") {
		for( m = 0; m < array_length_1d(menu); m += 1)
			{
			
				if(mpos == m)
					draw_set_color(c_yellow);
				else draw_set_color(c_white);
				if (m < 2) {
					draw_text(x,y + (m *space), string(menu[m]));
				}
				else {
					draw_set_halign(fa_left);
					draw_text(x - 150, y +(m * space), string(menu[m]));
					draw_text(x + 100, y +(m * space),  + " <" + srpt_key_to_string(buttons[m]) + "> ");
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
