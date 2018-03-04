
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
			keyToChange = "up";
			mpos = 0;
			whichMenu = "Waiting for input";
			break;
		case 2:
			alarm[0] = delay;
			keyToChange = "down";
			mpos = 0;
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