//John Tholen
//Changes between fullscreen and not fullscreen and saves those settings
switch(global.FULLSCREEN) {
	case 0:
		global.FULLSCREEN = 1;
		break;
	case 1:
		global.FULLSCREEN = 0;
		break;
	default:
		break;
}
window_set_fullscreen(global.FULLSCREEN);
ini_open("settings/window.ini");
ini_write_real("resolution","fullscreen",global.FULLSCREEN);
ini_close();