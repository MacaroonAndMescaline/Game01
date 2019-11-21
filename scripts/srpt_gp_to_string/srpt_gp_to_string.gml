//To represent which button is being used.
//Requires an argument sent
//Made by John Tholen, very annoying to let you know.


switch(argument0) {
	case gp_face1: return "A";
	case gp_face2: return "B";
	case gp_face3: return "X";
	case gp_face4: return "Y";
	case gp_shoulderl: return "L Shoulder Button";
	case gp_shoulderlb: return "L Shoulder Trigger";
	case gp_shoulderr: return "R Shoulder Button";
	case gp_shoulderrb: return "R Shoulder Trigger";
	case gp_select: return "Select";
	case gp_start: return "Start";
	case gp_stickl: return "L Stick";
	case gp_stickr: return "R Stick";
	case gp_padu: return "D-Pad Up";
	case gp_padd: return "D-Pad Down";
	case gp_padl: return "D-Pad Left";
	case gp_padr: return "D-Pad Right";
	case gp_axislh: return "L Stick Horizontal";
	case gp_axislv: return "L Stick Vertical";
	case gp_axisrh: return "R Stick Horizontal";
	case gp_axisrv: return "R Stick Vertical";
	default: break;
}