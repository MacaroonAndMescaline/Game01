/// @description MENU ITEMS
/// @author John Tholen
//These are the arrays that will be used when displaying the proper menu. 
//Resolution setting
res[0] = "-back-";
res[1] = "1280 X 720";
res[2] = "1920 X 1080";


//Options MENU
options[0] = "-back-";
options[1] = "controls";
options[2] = "resolution";
options[3] = "toggle full screen";

//controls menu
controls[0] = "-back-";
controls[1] = "up";
controls[2] = "down";
controls[3] = "left";
controls[4] = "right";
controls[5] = "action";
controls[6] = "blink";

//for button to be displayed on control change.
buttons[1] = global.CONTROL_UP;
buttons[2] = global.CONTROL_DOWN;
buttons[3] = global.CONTROL_LEFT;
buttons[4] = global.CONTROL_RIGHT;
buttons[5] = global.ACTION;
buttons[6] = global.BLINK;

//Main menu
menu[0] = "Start";
menu[1] = "Options";
menu[2] = "Quit";


//beta room selection
beta[0] = "-back-";
beta[1] = "rm_beta_slopes";
beta[2] = "rm_beta_vision";

waiting[0] = "PLEASE PRESS ANY KEY";


//other variables
whichMenu = "Main"; // can change to "Options", "Beta", "Controls". "Waiting for input"
loaded = true;