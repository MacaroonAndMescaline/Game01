/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("M"))) {
	menuOpen = !menuOpen
	if(menuOpen) {
		event_user(0); //shows menu
		event_user(2); //removes health & other important things
	}
	else { 
		event_user(1); //closes menu
		event_user(3); //show health & other important things
	}
}