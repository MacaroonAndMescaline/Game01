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
		case 0:
			loaded = false;
			instance_create_layer(x,y,"MenuLayer",obj_betaRooms);
			instance_destroy();
			break;
		case 1:
			//whichMenu = "Options";
			loaded = false;
			instance_create_layer(x,y,"MenuLayer",obj_options);
			instance_destroy();
			mpos = 0;
			break;
		case 2:
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
			loaded = false;
			instance_destroy();
			instance_create_layer(x,y,"MenuLayer",global.RETURNMENU);
			//instance_destroy();
			break;
		case 1:
			//whichMenu = "Controls";
			loaded = false;
			instance_create_layer(x,y,"MenuLayer",obj_controls);
			instance_destroy();
			break;
		case 2:
			//whichMenu = "Resolution";
			loaded = false;
			instance_create_layer(x,y,"MenuLayer",obj_resolution);
			instance_destroy();
			break;
		case 3:
			srpt_toggle_fullscreen();
			break;
		case 4: //master volume
			break;
		case 5: //music volume
			srpt_change_volume("music", barMove);
			break;
		case 6: //soundfx volume
			srpt_change_volume("soundfx", barMove);
			break;
		default:
			break;
	}
}
//-----------------------------------------------
//beta level selection---------------------------
else if(whichMenu == "Beta") {
	switch(mpos) {
		case 0:
			//whichMenu = "Main";
			loaded = false;
			instance_create_layer(x,y,"MenuLayer",global.RETURNMENU);
			instance_destroy();
			break;
		case 1:
			room_goto(rm_beta_slopes);
			break;
		case 2:
			room_goto(rm_beta_vision);
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
			loaded = false;
			instance_create_layer(x,y,"MenuLayer",obj_options);
			instance_destroy();
			break;
		case 1:
			alarm[0] = delay;
			mpos = 0;
			keyToChange = "up";
			whichMenu = "Waiting for input";
			break;
		case 2:
			alarm[0] = delay;
			mpos = 0;
			keyToChange = "down";
			whichMenu = "Waiting for input";
			break;
		case 3:
			alarm[0] = delay;
			mpos = 0;
			keyToChange = "left";
			whichMenu = "Waiting for input";
			break;
		case 4:
			alarm[0] = delay;
			mpos = 0;
			keyToChange = "right";
			whichMenu = "Waiting for input";
			break;
		case 5:
			alarm[0] = delay;
			mpos = 0;
			keyToChange = "action";
			whichMenu = "Waiting for input";
			break;
		case 6:
			alarm[0] = delay;
			mpos = 0;
			keyToChange = "blink"
			whichMenu = "Waiting for input";
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
//Resolution change------------------------------
else if(whichMenu == "Resolution") {
	switch(mpos) {
		case 0:
			//whichMenu = "Options";
			loaded = false;
			instance_create_layer(x,y,"MenuLayer",obj_options);
			instance_destroy();
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
			gamePause = false;
			physics_pause_enable(false);
			instance_destroy();
			break;
		case 1:
			loaded = false;
			instance_create_layer(x,y,"MenuLayer",obj_options);
			instance_destroy();
			break;
		case 2:
			loaded = false;
			instance_activate_all();
			physics_pause_enable(false);
			instance_destroy();
			room_goto(rm_splash);
			
	}
	
}