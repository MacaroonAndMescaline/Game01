/// @description Insert description here
draw_self();
//if ball is picked up.
if(xadd < 0)
	obj_direction_right = false;
else if(xadd > 0)
	obj_direction_right = true;
if(picked_up_item) {
	if(!obj_direction_right)
		draw_sprite_ext(held_sprite,-1, x - held_width, y ,1,1,0,-1,1);
	else
		draw_sprite_ext(held_sprite,-1, x + obj_width, y ,1,1,0,-1,1);
}
