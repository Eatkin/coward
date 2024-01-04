if (!activated and !instance_exists(obj_maze_dialogue_trigger))	{
	activated = true;
}

if (activated)	{
	timer--;
	// Exit the level if the dialogue queue has been emptied and time is up
	if (timer <= 0 and ds_list_size(global.dialogueList) == 0 and !instance_exists(obj_textBox) and !instance_exists(obj_transition))	{
		scr_create_transition(TransitionType.FadeOut, TransitionStyle.EaseInQuad, true, Room1);
	}
}