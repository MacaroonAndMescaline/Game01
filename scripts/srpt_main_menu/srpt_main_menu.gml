
delay = 1;

//main menu
if(whichMenu = "Main") {
	switch(mpos) {
		case 0:
			whichMenu = "Beta";
			break;
		case 1:
			whichMenu = "Options";
			mpos = 0;
			break;
		case 2:
			game_end();
			break;
		default:
			break;
	}
}
//options menu
else if(whichMenu = "Options") {
	switch(mpos) {
		case 0:
			whichMenu = "Main";
			mpos = 1;
			break;
		case 1:
			whichMenu = "Controls";
			break;
		case 2:
			whichMenu = "Resolution";
			mpos = 0;
			break;
		case 3:
			srpt_toggle_fullscreen();
			break;
		default:
			break;
	}
}
//beta level selection
else if(whichMenu == "Beta") {
	switch(mpos) {
		case 0:
			whichMenu = "Main";
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
//controls
else if(whichMenu == "Controls") {
	switch(mpos){
		case 0:
			whichMenu = "Options";
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
		default:
			break;
	}
}
//changing controls
else if(whichMenu == "Waiting for input") {
	switch(mpos) {
		case 0:
			whichMenu = "Controls";
			srpt_change_controls();
			break;
		default:
			break;
	}
}
//Resolution change
else if(whichMenu == "Resolution") {
	switch(mpos) {
		case 0:
			whichMenu = "Options";
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