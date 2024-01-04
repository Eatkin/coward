// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_vinput(){
	return max(array_contains(global.keys_held, Keys.Down), array_contains(global.keys_held, Keys.AltDown)) - max(array_contains(global.keys_held, Keys.Up), array_contains(global.keys_held, Keys.AltUp));
}