// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_play_sound(snd){
	// Plaays a sound with random pitch variation
	var _pitch = 0.95 + random(0.1);
	var _snd = audio_play_sound(snd, 0, false, 1, 0, _pitch);
	return _snd;
}