/// @author John Tholen
// purpose of this is to have every moving object
// be able to move up slopes rather than just the player character

//Objects using this need to have xadd and obj_speed and grounded.

//-------------------------------------
//variables for sweeping which angle---
//-------------------------------------

if(xadd > 0)
	anglesweep = 0;
else
	anglesweep = 180;
anglesweepup = anglesweep;
anglesweepdown = anglesweep;
anglerem = 70; 
pathclear = 0; 

//-------------------------------------
//Figuring out the angle for movement--
//-------------------------------------
if (grounded){
while (anglerem >= 0 && pathclear == 0){

groundcheckxup = x + lengthdir_x(obj_speed,anglesweepup)
groundcheckyup = y + lengthdir_y(obj_speed,anglesweepup)

groundcheckxdown = x + lengthdir_x(obj_speed,anglesweepdown)
groundcheckydown = y + lengthdir_y(obj_speed,anglesweepdown)

	if place_free(groundcheckxup,groundcheckyup) && !place_free(groundcheckxup,groundcheckyup+3){
		phy_position_y += lengthdir_y(obj_speed,anglesweepup);
		phy_position_x += lengthdir_x(obj_speed,anglesweepup);
		move_contact_solid(270, -1);
		pathclear = 1;
		break;
	}
	if place_free(groundcheckxdown,groundcheckydown) && !place_free(groundcheckxdown,groundcheckydown+3){
		phy_position_y += lengthdir_y(obj_speed,anglesweepdown);
		phy_position_x += lengthdir_x(obj_speed,anglesweepdown);
		move_contact_solid(270, -1);
		pathclear = 1;
		break;
	}
anglesweepup += 5 * xadd;
anglesweepdown += -5 * xadd;
if(anglesweepdown < 0)
	anglesweepdown = 355;
if(anglesweepup > 360)
	anglesweepup = 5;
anglerem -= 5;
//old way of doing this where angles would be negative and that is wrong for newer versions.
/*	anglesweep += 5*xadd;
	anglerem -= 5;

	groundspotx = x+lengthdir_x(obj_speed,anglesweep)
	groundspoty = y+lengthdir_y(obj_speed,anglesweep)
	if place_free(groundspotx,groundspoty) && !place_free(groundspotx,groundspoty+5)
             pathclear = 1 
*/
}
if(!pathclear) phy_position_x += xadd *obj_speed;
} else phy_position_x += xadd *obj_speed
