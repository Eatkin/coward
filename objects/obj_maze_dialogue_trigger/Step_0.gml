if (place_meeting(x, y, obj_billy))	{
	// Dialogue_indices is defined in room creation code
	if (dialogue_indices != [])	{
		var arr = [];
		// Populate the temporary array
		var len = array_length(dialogue_indices);
		for (var i = 0; i < len; i++)	{
			array_push(arr, dialogue_array[dialogue_indices[i]]);
		}
		// Queue
		array_foreach(arr, scr_queueDialogue);
	}
	instance_destroy();
}