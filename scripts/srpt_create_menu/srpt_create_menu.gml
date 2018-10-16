//calling this script----------------------------------------------------------
//srpt_create_menu(goingTo,comingFrom);
//-----------------------------------------------------------------------------
//goingTo ----> argument0 = menu object being created
//comingFrom -> argument1 = menu object that is creating a new menu object


loaded = false
var goingTo = argument0
var comingFrom = argument1
with instance_create_layer(x,y,"MenuLayer",goingTo) {
	if ds_stack_size(other.return_to) > 0
		ds_stack_copy(return_to, other.return_to)
	ds_stack_push(return_to,comingFrom)
}
instance_destroy();