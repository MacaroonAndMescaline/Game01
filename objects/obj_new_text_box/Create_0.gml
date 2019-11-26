/// @description Insert description here
// You can write your code in this editor
messages = ds_list_create();
messageID = 0;

messageText = "";
messageChar = 0;
messageSpeed = 0.3;

enum MSG{
	TEXT,
	NAME,
	IMAGE 
}

//gui dimensions
var lguiW = display_get_gui_width();
var lguiH = display_get_gui_height();
// textbox dimensions
height = floor(lguiH * 0.20);
width = lguiW;
//position on screen
x = 0;
y = lguiH - height;

//other nonsense
padding = 10;
drawArrow = false;