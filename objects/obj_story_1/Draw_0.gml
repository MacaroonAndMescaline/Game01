/// @description change image alpha and draw
// You can write your code in this editor
if(fadein) image_alpha = lerp(image_alpha,1,0.3);
else if (fader) image_alpha = lerp(image_alpha,0,0.3);
draw_self();