/// @author John Tholen
/// @description calculating angle for walking

//Checking for slopped angle
//works for going up slopes but not down, must change it later
if (other.slope < 60) &&(xadd != 0) && (phy_speed_y > -obj_speed/2){
	
	if (other.slope < 45) physics_apply_impulse(x,y,0,-1/(other.slope/2.75));
	else physics_apply_impulse(x,y,0,-1/(other.slope/5));
}
