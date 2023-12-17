/// @description Insert description here
// You can write your code in this editor

// We don't want to spawn any dialogue when there is a transition occuring
if (instance_exists(obj_transition))	{
	exit;
}

if (!ds_list_empty(global.dialogueList))	{
	switch (dialogue_type)	{
		case DialogueDisplay.Textbox:
			if (!instance_exists(obj_textBox))	{
				//Copy the dialogue from the top of the list to a text box
				var box		=	instance_create_layer(0, 0, layer, obj_textBox);
				box.text	=	scr_stringAddLineBreaks(global.dialogueList[| 0], sprite_get_width(spr_messageBox) * 0.9);
	
				//Now de-queue the top value
				ds_list_delete(global.dialogueList, 0);
			}
			break;
		
		case DialogueDisplay.CutsceneFade:	
			if (!instance_exists(obj_cutscene_fade_text))	{
				// Alternate left or right
				var dialogues_queued = ds_list_size(global.dialogueList);
				var l_justify = dialogues_queued % 2;
				var y_min = RES_HEIGHT * 0.1;
				var y_max = RES_HEIGHT * 0.8;
				
				var xx = RES_WIDTH * (0.25 + l_justify * 0.5);
				// Apply jitter
				var x_jitter = -0.1 + random(0.2);
				xx += x_jitter;
				var max_width = RES_WIDTH * 0.3;
				
				// As global.dialogueList grows, the y approaches y_min
				// E.g. a queue of 9 will give y_max - 0.8 * (y_max - y_min)
				// It will max out not to exceed y_min
				var yy = y_max + (1 - min(dialogues_queued, 11)) * (y_max - y_min) * 0.1;
				
				// Create a box
				var box = instance_create_layer(xx, yy, layer, obj_cutscene_fade_text);
				box.text = scr_stringAddLineBreaks(global.dialogueList[| 0], max_width);
				box.colour = colour;
				
				// de-queue top value
				ds_list_delete(global.dialogueList, 0);
			}
			break;
	}
}