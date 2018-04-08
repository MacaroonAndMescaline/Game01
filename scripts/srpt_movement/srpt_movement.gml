/// @author John Tholen
// purpose of this is to have every moving object
// be able to move up slopes rather than just the player character

/*****************************************************************
**********************IMPORTANT INFORMATION***********************
*Objects using this need to have xadd and obj_speed and grounded.*
******************************************************************
******************************************************************/

//-------------------------------------
//variables for sweeping which angle---
//-------------------------------------

	if(xadd > 0) {
		anglesweepup = 0;
		anglesweepdown = 0;
	}
	else {
		anglesweepup = 180;
		anglesweepdown = 180;
	}
	anglerem = 75; 
	pathclear = 0; 
	decre = 5;

//-------------------------------------
//Figuring out the angle for movement--
//And moving in that direction---------
//-------------------------------------
	if (grounded){
		while (anglerem >= 0 && pathclear == 0){

			groundcheckxup = x + lengthdir_x(obj_speed,anglesweepup)
			groundcheckyup = y + lengthdir_y(obj_speed,anglesweepup)

			groundcheckxdown = x + lengthdir_x(obj_speed,anglesweepdown)
			groundcheckydown = y + lengthdir_y(obj_speed,anglesweepdown)

			if place_free(groundcheckxup,groundcheckyup) && !place_free(groundcheckxup,groundcheckyup+decre/2){
				phy_position_y += lengthdir_y(obj_speed,anglesweepup);
				phy_position_x += lengthdir_x(obj_speed,anglesweepup);
				while(place_free(phy_position_x,phy_position_y+1)) {
					phy_position_y ++;
				}
				pathclear = 1;
				break;
			}
			if place_free(groundcheckxdown,groundcheckydown) && !place_free(groundcheckxdown,groundcheckydown+decre/2){
				phy_position_y += lengthdir_y(obj_speed,anglesweepdown);
				phy_position_x += lengthdir_x(obj_speed,anglesweepdown);
				while(place_free(phy_position_x,phy_position_y+1)) {
					phy_position_y ++;
				}
				pathclear = 1;
				break;
			}
			anglesweepup += decre * xadd;
			anglesweepdown = 0 ? 355 : anglesweepdown - decre * xadd;
			anglerem -= decre;
		}
		if(!pathclear) phy_position_x += xadd *obj_speed;
	} 
	else phy_position_x += xadd *obj_speed
