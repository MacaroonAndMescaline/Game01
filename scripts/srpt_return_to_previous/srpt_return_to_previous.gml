//This gets called when a menu object wants to return to previous menu

loaded = false;
var whereToGo = ds_stack_top(return_to)
ds_stack_pop(return_to)

instance_destroy();
with instance_create_layer(x,y,"MenuLayer", whereToGo) {
	if ds_stack_size(other.return_to) > 0
		ds_stack_copy(return_to, other.return_to)
}