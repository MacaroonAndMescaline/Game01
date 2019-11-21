/// @description Changing animations and wall sticking
// You can write your code in this editor
if(image_index == hammer_frames - 1 && hammer) {
	alarm[0] = delay;
	hammer = false;
}
if(image_index == spear_frames - 1 && spear && !wall_stuck) {
	alarm[0] = delay;
	spear = false;
}
if(wall_stuck && spear) image_speed = 0;
else image_speed = image_start_speed;