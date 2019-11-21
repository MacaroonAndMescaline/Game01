/// @description Initialization

obj_direction_right = true;
grounded = false;
hitbox = 0;
//-----------------------------------------------------------------------------
//objects being picked up variables============================================
//-----------------------------------------------------------------------------
held_object = 0;
held_sprite = 0;
held_name = 0;
held_width = 0;
held_height = 0;

//alarm for picking up and throwing objects
alarm[0] = 0;

//-----------------------------------------------------------------------------
//creating a pickup range for the interactables================================
//-----------------------------------------------------------------------------
pickup_range = instance_create_layer(x,y,"Instances",obj_interactable_trigger)
with(pickup_range){
	image_xscale = other.obj_width/sprite_width + .3;
	image_yscale = other.obj_height/sprite_height + .3;
	follow = other.id;
}

picked_up_item = false;

//-----------------------------------------------------------------------------
//What speed to move at========================================================
//-----------------------------------------------------------------------------
obj_speed = base_speed + (base_speed * global.GAME_SPEED)
climb_speed = base_climb_speed + (base_climb_speed *global.GAME_SPEED)

//-----------------------------------------------------------------------------
//Attacking====================================================================
//-----------------------------------------------------------------------------
with instance_create_layer(x,y,"Instances", obj_hitbox) {
	follow = other.id;
	other.hitbox = id;
}

//-----------------------------------------------------------------------------
//FC-Dialog nonsense===========================================================
//-----------------------------------------------------------------------------
myPortrait			= spr_portrait_player;
myVoice				= snd_voice2;
myFont				= fnt_dialogue;
myName				= "John";

myPortraitTalk		= spr_portrait_examplechar_mouth;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= spr_portrait_examplechar_idle;