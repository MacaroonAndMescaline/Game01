/// @description MENU ITEMS
/// @author John Tholen

//Options MENU
options[0] = "-back-";
options[1] = "controls";

//controls menu
controls[0] = "-back-";
controls[1] = "up";
controls[2] = "down";
controls[3] = "left";
controls[4] = "right";
controls[5] = "action";

//for button numbers
buttons[1] = global.CONTROL_UP;
buttons[2] = global.CONTROL_DOWN;
buttons[3] = global.CONTROL_LEFT;
buttons[4] = global.CONTROL_RIGHT;
buttons[5] = global.ACTION;

//Main menu
menu[0] = "Start";
menu[1] = "Options";
menu[2] = "Quit";


//beta room selection
beta[0] = "-back-";
beta[1] = "rm_beta_slopes";

waiting[0] = "PLEASE PRESS ANY KEY";


//other variables
space = 64;
mpos = 0;
whichMenu = "Main"; // can change to "Options", "Beta", "Controls". "Waiting for input"
keyToChange = 0;