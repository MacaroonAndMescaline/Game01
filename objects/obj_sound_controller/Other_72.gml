/// @description Sounds loaded
// You can write your code in this editor
if(audio_group_is_loaded(ag_Music)) {
	audio_play_sound(music_playing,100,true);
	control = true;
}

if(audio_group_is_loaded(ag_SoundFX)) {
	sfx_load = true;	
}