/// @description transition trigger

if (ds_list_size(global.dialogueList) == 0 and !instance_exists(obj_transition) and !instance_exists(par_dialogue))	{
	scr_create_transition(TransitionType.FadeOut, TransitionStyle.BounceIn, true, Room1);
}