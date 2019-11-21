//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "You can run a script after any line of dialogue! Let's make an emote to the left.";
		mySpeaker[i]	= id;
		myScripts[i]	= [create_instance_layer, 170,120,"Instances",obj_emote];
		
		//Line 1
		if(enemy_exist){
		i++;
		myText[i]		= "I saw something really spooky up ahead. Will you go take care of it for me?";
		myEffects[i]	= [23,1 , 30,0];
		mySpeaker[i]	= id;
		} else {
		i++;
		myText[i] = "Thanks, I really appreciate it.";
		mySpeaker[i] = id;
		}
		#endregion
	break;
}