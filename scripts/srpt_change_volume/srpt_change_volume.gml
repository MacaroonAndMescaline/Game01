volume = argument0;
dir = argument1;

if(volume == "master") {
	global.MASTER_VOLUME += .1 * dir;
	if(global.MASTER_VOLUME < 0) global.MASTER_VOLUME = 0;
	if(global.MASTER_VOLUME > 1) global.MASTER_VOLUME = 1;
}
else if(volume == "music") {
	global.MUSIC_VOLUME += .1 * dir;
	if(global.MUSIC_VOLUME < 0) global.MUSIC_VOLUME = 0;
	if(global.MUSIC_VOLUME > 1) global.MUSIC_VOLUME = 1;
}
else if(volume == "soundfx") {
	global.SOUNDFX_VOLUME += .1 * dir;
	if(global.SOUNDFX_VOLUME < 0) global.SOUNDFX_VOLUME = 0;
	if(global.SOUNDFX_VOLUME > 1) global.SOUNDFX_VOLUME = 1;
}

audio_master_gain(global.MASTER_VOLUME);
audio_group_set_gain(ag_Music, global.MUSIC_VOLUME,0.1);
audio_group_set_gain(ag_SoundFX, global.SOUNDFX_VOLUME, 0.1);

ini_open("settings/audio.ini");
ini_write_real("audio","master",global.MASTER_VOLUME);
ini_write_real("audio","music",global.MUSIC_VOLUME);
ini_write_real("audio","soundfx",global.SOUNDFX_VOLUME);
ini_close();