/// @author John Tholen
/// @description Movement
//-----------------------------------------------------------------------
//Controls---------------------------------------------------------------
//-----------------------------------------------------------------------

//keyboard input

//moving and doing actions
switch(keyboard_key) {
	case global.ALT_CONTROL_LEFT:
	case global.CONTROL_LEFT:
		xadd = -1;
		obj_direction_right = false;
		srpt_movement();
		break;
	case global.ALT_CONTROL_RIGHT:
	case global.CONTROL_RIGHT:
		xadd = 1;
		obj_direction_right = true;
		srpt_movement();
		break;
	case global.ACTION:
		event_user(0);
	default: 
		show_debug_message("Button pressed = " + string(keyboard_key));
		xadd = 0;
		break;	
}

//escaping back to Main menu
if(keyboard_check_pressed(global.ESCAPE)) room_goto(rm_splash);


//DEBUG PURPOSES ON FIGURING OUT THE LITERAL VALUE FOR KEYBOARD INPUT
//GAME MAKER IS RETARDED AND DOESN'T USE THE NORMAL STANDARDS
/*
if(keyboard_check(vk_left))
	show_debug_message("left = " + string(ord("A")))
if(keyboard_check(vk_right))
	show_debug_message("right = " + string(ord("D")))
if(keyboard_check(vk_up))
	show_debug_message("up = " + string(ord("W")))
if(keyboard_check(vk_down))
	show_debug_message("down = " + string(ord("S")))
*/

//jumping only while grounded
//******NOT NEEDED*******

/*
if(keyboard_check(vk_space)) && (grounded){
	physics_apply_force(x,y,0, -JUMP_SPEED);
	grounded = false;
} 
*/
