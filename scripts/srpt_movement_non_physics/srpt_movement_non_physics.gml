//Required
//obj_speed
//x_add
//-----------------------------------------------------------------------------
//Horizontal speed gets set with direction=====================================
//-----------------------------------------------------------------------------
hspd = obj_speed * xadd



//-----------------------------------------------------------------------------
//horizontal collisions and slopes=============================================
//-----------------------------------------------------------------------------
if(place_meeting(x+hspd,y,obj_ground_parent)) {
	for(var i = 0; i < 10; i++) 
		if(!place_meeting(x+hspd,y-i,obj_ground_parent)) {
			y -= i
			break;
		}
}
if !place_meeting(x+hspd,y,obj_ground_45) && place_meeting(x+hspd,y,obj_ground_parent) {
	while(!place_meeting(x+sign(hspd),y,obj_ground_parent))
		x+=sign(hspd)
	hspd = 0
}
x += hspd