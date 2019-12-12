/// @description Loads sounds in and stores they type of music
//John Tholen
audio_group_load(ag_SoundFX);
audio_group_load(ag_Music);

music_playing = snd_croc;
music_list = [snd_croc];
sfx = [snd_TestFX];

//music_volume = global.MUSIC;
//sfx_volume = global.SFX;

control = false;
music_target = 0;
sfx_load = false;