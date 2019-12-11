/// @description changing image opacity
if (fader)image_alpha = lerp(image_alpha,0,.3)
else if (fadein) image_alpha = lerp(image_alpha,1,0.08)
draw_self();