
//for main menu
//case 0 is option 1 start
//case 1 is option 2 options
//case 3 is option 3 quit
if(whichMenu = "Main") {
	switch(mpos) {
		case 0:
			room_goto_next();
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
else if(whichMenu = "Options") {
	switch(mpos) {
		case 0:
			break;
		case 1:
			whichMenu = "Main";
			mpos = 1;
			break;
		default:
			break;
	}
}