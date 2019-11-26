/// @description Insert description here
// You can write your code in this editor
var larr = messages[| messageID];
var lname = larr[MSG.NAME];
var limage = larr[MSG.IMAGE];
//get gui dimensions for arrow
var lguiW = display_get_gui_width();
var lguiH = display_get_gui_height();

draw_set_font(fnt_main_menu);

//draw textbox
srpt_draw_9slice(x,y,width,height,spr_textbox,0);

//draw position
var ldrawX = x + padding;
var ldrawY = y + padding;

//draw image
if(sprite_exists(limage)) {
	var limageW = sprite_get_width(limage);
	var limageH = sprite_get_height(limage);
	
	draw_sprite(limage, 0, ldrawX + limageW/2, ldrawY + limageH/2)
	ldrawX += limageW + padding;
}
//text color
draw_set_color(c_black);
//name
draw_text(ldrawX,ldrawY,lname);
ldrawY +=string_height(lname) + padding;
//get max width for text
var lmaxW = width - (ldrawX + padding);
//draw text
draw_text_ext(ldrawX,ldrawY,messageText, -1,lmaxW);
draw_set_color(c_white);

//draw finished arrow if text is done
if(drawArrow) {
	draw_sprite(spr_new_arrow,0,lguiW - padding,lguiH - padding)
}