//REQUIRED
//vspd
//grounded
if(vspd < 10) vspd += grav
distance_to_slope = 10
//-----------------------------------------------------------------------------
//vertical collisions for gravity purposes=====================================
//-----------------------------------------------------------------------------
if place_meeting(x,y + vspd,obj_ground_parent) 
|| place_meeting(x,y+distance_to_slope,obj_ground_45) 
&& vspd >0{
	while(!place_meeting(x,y+sign(vspd),obj_ground_parent))
		y += sign(vspd)
	vspd = 0
	grounded = true
} else grounded = false
//-----------------------------------------------------------------------------
//gravity taking hold==========================================================
//-----------------------------------------------------------------------------
y+= vspd
