/// @description Hammer attack
if(!wall_stuck) {
sprite_index = spr_hammer;
hammer = true;
spear = false;
if(attack_direction_right) {
	image_xscale = 1
}
else image_xscale = -1;
}