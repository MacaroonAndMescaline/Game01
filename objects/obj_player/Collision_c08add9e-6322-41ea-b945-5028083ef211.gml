/// @description calculating angle for walking

//Checking for slopped angle
if (place_meeting(x + phy_speed_x,y,obj_ground_parent))
{
    y--;
}
