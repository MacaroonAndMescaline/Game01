/// @description Opens INI controls

ini_open("settings/controls.ini");

//Main controls
global.CONTROL_LEFT = ini_read_real("controls","left",65);
global.CONTROL_RIGHT= ini_read_real("controls","right",0);
global.CONTROL_DOWN = ini_read_real("controls","down",0);
global.CONTROL_UP= ini_read_real("controls","up",0);
global.ACTION = ini_read_real("controls","action",0);
global.CONFIRM = ini_read_real("controls","confirm",0);
global.ESCAPE = ini_read_real("controls","escape",0);
global.BLINK = ini_read_real("controls","blink",20);
global.CLIMB = ini_read_real("controls","climb",16);

//Secondary Controls
global.ALT_CONTROL_LEFT = ini_read_real("alternate controls","left",0);
global.ALT_CONTROL_RIGHT= ini_read_real("alternate controls","right",0);
global.ALT_CONTROL_DOWN = ini_read_real("alternate controls","down",0);
global.ALT_CONTROL_UP= ini_read_real("alternate controls","up",0);


//xbox controller controls
global.GP_HORIZONTAL_MOVE =	ini_read_real("gamepad","horizontal",gp_axislh);
global.GP_VERTICAL_MOVE = ini_read_real("gamepad","vertical",gp_axislv);
global.GP_ESCAPE = ini_read_real("gamepad","escape",gp_start);
global.GP_ACTION = ini_read_real("gamepad","action",gp_face1);
global.GP_BLINK = ini_read_real("gamepad","blink",gp_face4);
global.GP_CLIMB = ini_read_real("gamepad","climb",gp_face3);

ini_close();

ini_open("settings/window.ini")
//Resolution and other settings
global.VIEW_PORT_X = ini_read_real("resolution","x",1280);
global.VIEW_PORT_Y = ini_read_real("resolution","y",720);
global.FULLSCREEN = ini_read_real("resolution","fullscreen",0);
window_set_size(global.VIEW_PORT_X,global.VIEW_PORT_Y);
window_set_fullscreen(global.FULLSCREEN);
ini_close();

//controller
gamepad_set_axis_deadzone(0,0.7);

//disable cursor on screen
window_set_cursor(cr_none);

//figure out audio settings
ini_open("settings/audio.ini");
global.MUSIC_VOLUME = ini_read_real("audio","music",.8);
global.SOUNDFX_VOLUME = ini_read_real("audio","soundfx",.8);
global.MASTER_VOLUME = ini_read_real("audio","master",1);
audio_group_set_gain(ag_Music, global.MUSIC_VOLUME,0);
audio_group_set_gain(ag_SoundFX, global.SOUNDFX_VOLUME, 0);
audio_master_gain(global.MASTER_VOLUME);
ini_close();

//for changing gamepad controls
global.GP_BUTTONS = [gp_face1,gp_face2,gp_face3,gp_face4,gp_shoulderl,gp_shoulderlb,
                     gp_shoulderr,gp_shoulderrb,gp_select,gp_start,gp_padu,gp_padd,
					 gp_padl,gp_padr,gp_axislh,gp_axislv,gp_axisrh,gp_axisrv];
					 
//setting some global variables up
global.CAME_FROM = 0;