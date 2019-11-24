/// @description Insert description here
// You can write your code in this editor
var larr = messages[| messageID];
var ltext = larr[MSG.TEXT];
messageText = string_copy(ltext,1,messageChar);
if(messageChar <= string_length(ltext)) messageChar += messageSpeed;
if(keyboard_check_direct(vk_enter) && messageChar <= string_length(ltext)) messageChar += messageSpeed * 3;
else if(keyboard_check_pressed(vk_enter)){
	if(messageID < ds_list_size(messages) -1 ) {
		messageID++;
		messageChar = 0;
	}
	else instance_destroy();
}