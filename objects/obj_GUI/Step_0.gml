/// @description Insert description here
// You can write your code in this editor
var _hover = srpt_get_mouse_hover();
var click = _hover && mouse_check_button_pressed(mb_left);
y = lerp(y, ystart - _hover * 8, 0.1)
hover = lerp(hover,_hover,0.1);

if(click && script >= 0) script_execute(script);