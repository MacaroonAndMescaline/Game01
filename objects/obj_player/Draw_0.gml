///@description Debugging
draw_self()

//-----------------------------------------------------------------------------
//if object is picked up.======================================================
//-----------------------------------------------------------------------------
if(picked_up_item) {
	if(!obj_direction_right)
		draw_sprite_ext(held_sprite,-1, x - held_width/2, 
		                y + held_height/2 ,1,1,0,-1,1);
	else
		draw_sprite_ext(held_sprite,-1, x + obj_width + held_width/2,
		                y + held_height/2,1,1,0,-1,1);
}
