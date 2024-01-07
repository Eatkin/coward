/// @description transition trigger

if (!dialogue_complete and ds_list_size(global.dialogueList) == 0 and !instance_exists(par_dialogue))	{
	dialogue_complete = true;
}

if (dialogue_complete and !instance_exists(obj_transition))	{
	// Check to see how far the background has scrolled
	var _bgscale, _bgy, _bgh;
	with (obj_background)	{
		_bgscale = background_scale;
		_bgy = y;
		_bgh = sprite_get_height(background_image) * _bgscale;
	}
	
	if (_bgy < -_bgh + room_height)	{
		scr_create_transition(TransitionType.FadeOut, TransitionStyle.BounceIn, true, rm_tomato_boat);
	}
}