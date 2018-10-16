//-----------------------------------------------
//Author: JOHN THOLEN----------------------------
//This is the main menu script that runs the code
//This code is called by obj_menu----------------
//-----------------------------------------------

//This delay is for adding a alarm to obj_menu for changing controls
//It causes a one frame delay so that the enter button isn't accepted
//Prevents unwanted buttons
delay = 1;
//-----------------------------------------------
//main menu--------------------------------------
if(whichMenu = "Main") {
	switch(mpos) {
		case 0: //Start
			srpt_create_menu(obj_betaRooms, obj_mainMenu);
			break;
		case 1: //Load
			break;
		case 2: //whichMenu = "Options";
			srpt_create_menu(obj_options, obj_mainMenu)
			break;
		case 3:
			game_end();
			break;
		default:
			break;
	}
}
//-----------------------------------------------
//options menu-----------------------------------
else if(whichMenu = "Options") {
	switch(mpos) {
		case 0:
			//whichMenu = "Main";
			srpt_return_to_previous();
			break;
		case 1:
			//whichMenu = "Controls";
			srpt_create_menu(obj_controls, obj_options)
			break;
		case 2:
			//whichMenu = "Resolution";
			srpt_create_menu(obj_resolution, obj_options)
			break;
		case 3: //full screen
			srpt_toggle_fullscreen();
			break;
		case 4: //master volume
			srpt_change_volume("master", barMove);
			break;
		case 5: //music volume
			srpt_change_volume("music", barMove);
			break;
		case 6: //soundfx volume
			srpt_change_volume("soundfx", barMove);
			break;
		case 7: //gamespeed
			srpt_change_game_speed(barMove)
		default:
			break;
	}
}
//-----------------------------------------------
//beta level selection---------------------------
else if(whichMenu == "Beta") {
	switch(mpos) {
		case 0: //-back- 
			srpt_return_to_previous();
			break;
		case 1:
			room_goto(rm_beta_slopes);
			break;
		case 2:
			room_goto(rm_beta_vision);
			break;
		case 3:
			room_goto(rm_beta_climb);
			break;
		case 4:
			room_goto(rm_beta_ladder);
			break;
		default:
			break;
		
	}
}
//-----------------------------------------------
//controls---------------------------------------
else if(whichMenu == "Controls") {
	switch(mpos){
		case 0:
			//whichMenu = "Options";
			srpt_return_to_previous();
			break;
		case 1: //game pad controls
			srpt_create_menu(obj_gamepad, obj_controls);
			break;
		case 2:
			alarm[0] = delay;
			mpos = 0;
			keyToChange = "up";
			whichMenu = "Waiting for input";
			break;
		case 3:
			alarm[0] = delay;
			mpos = 0;
			keyToChange = "down";
			whichMenu = "Waiting for input";
			break;
		case 4:
			alarm[0] = delay;
			mpos = 0;
			keyToChange = "left";
			whichMenu = "Waiting for input";
			break;
		case 5:
			alarm[0] = delay;
			mpos = 0;
			keyToChange = "right";
			whichMenu = "Waiting for input";
			break;
		case 6:
			alarm[0] = delay;
			mpos = 0;
			keyToChange = "action";
			whichMenu = "Waiting for input";
			break;
		case 7:
			alarm[0] = delay;
			mpos = 0;
			keyToChange = "blink"
			whichMenu = "Waiting for input";
			break;
		case 8:
			alarm[0] = delay;
			mpos = 0;
			keyToChange = "climb";
			whichMenu = "Waiting for input";
			break;
		default:
			break;
	}
}
//-----------------------------------------------
//changing controls------------------------------
else if(whichMenu == "Waiting for input") {
	if(alarm[0] < 0){
			srpt_change_controls();
			whichMenu = "Controls";
			mpos = 0;
	}
}
//-----------------------------------------------
//Changing Gamepad Controls----------------------
else if(whichMenu == "Waiting for input GP") {
	if(alarm[0] < 0) {
		srpt_change_controls_GP();
		whichMenu = "Gamepad";
		mpos = 0;
		alarm[0] = delay;
	}
}

//-----------------------------------------------
//Resolution change------------------------------
else if(whichMenu == "Resolution") {
	switch(mpos) {
		case 0:
			//whichMenu = "Options";
			srpt_return_to_previous();
			break;
		case 1:
			srpt_change_res(1280, 720);
			break;
		case 2:
			srpt_change_res(1920,1080);
		default:
			break;
	}
}
//-----------------------------------------------
//Pause Menu-------------------------------------
else if(whichMenu == "Pause") {
	switch(mpos) {
		case 0: 
			loaded = false;
			instance_activate_all();
			global.PAUSE = false;
			physics_pause_enable(false);
			instance_destroy();
			break;
		case 1: //options
			srpt_create_menu(obj_options, obj_pause)
			break;
		case 2: //quit to main menu
			loaded = false;
			instance_activate_all();
			physics_pause_enable(false);
			instance_destroy();
			room_goto(rm_splash);
			break;
		case 3: //goto previous room
			if(room_exists(room_previous(room)))
				room_goto_previous();
			break;
		case 4: //goto next room
			if room_exists(room_next(room)) 
				room_goto_next();
			break;
		default:
			break;
			
	}
	
}
//-----------------------------------------------
//Gamepad Controls-------------------------------
else if(whichMenu == "Gamepad") && (alarm[0] < 0) {
	switch(mpos) {
		case 0:
			srpt_return_to_previous();
			break;
		case 1:
			alarm[0] = delay;
			mpos = 0;
			keyToChange = "horizontal";
			whichMenu = "Waiting for input GP";
			break;
			break;
		case 2:
			alarm[0] = delay;
			mpos = 0;
			keyToChange = "vertical";
			whichMenu = "Waiting for input GP";
			break;
		case 3:
			alarm[0] = delay;
			mpos = 0;
			keyToChange = "action";
			whichMenu = "Waiting for input GP";
			break;
		case 4:
			alarm[0] = delay;
			mpos = 0;
			keyToChange = "blink";
			whichMenu = "Waiting for input GP";
			break;
		case 5:
			alarm[0] = delay;
			mpos = 0;
			keyToChange = "climb";
			whichMenu = "Waiting for input GP";
			break;
		default:
			break;
	}
}