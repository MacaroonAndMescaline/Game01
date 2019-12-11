/// @description SETTING GAME SPEED and wall sticking
obj_speed = base_speed + (base_speed * global.GAME_SPEED)
climb_speed = base_climb_speed + (base_climb_speed * global.GAME_SPEED)
if(place_meeting(x,y + 1,obj_ground_parent)) grounded = true;
else grounded = false