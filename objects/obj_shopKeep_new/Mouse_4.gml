/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(obj_new_text_box)) {
	var tb = instance_create_layer(0,0,"Instances",obj_new_text_box);
	
	var list = tb.messages;
	for(var i=0; i < array_length_1d(msg); i++){
		var larr = msg[i];
		ds_list_add(list,larr);
	}
}