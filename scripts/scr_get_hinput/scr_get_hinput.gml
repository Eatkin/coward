// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_hinput(){
	return max(array_contains(global.keys_held, Keys.Right), array_contains(global.keys_held, Keys.AltRight)) - max(array_contains(global.keys_held, Keys.Left), array_contains(global.keys_held, Keys.AltLeft));
}