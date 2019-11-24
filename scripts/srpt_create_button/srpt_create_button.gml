/// @arg x
/// @arg y
/// @arg width
/// @arg height
/// @arg text
/// @arg script

var lX = argument[0];
var lY = argument[1];
var lWidth = argument[2];
var lHeight = argument[3];
var lText = argument[4];
var lScript = argument[5];

var lButton = instance_create_layer(lX,lY,"Instances", obj_GUI);
with(lButton) {
	width = lWidth;
	height = lHeight;
	text = lText;
	script = lScript;
}
return lButton;