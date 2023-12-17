instance_create_layer(0, 0, layer, obj_min_intro_cutscene);

// Set the dialogue manager's text type to fadey text
obj_dialogueManager.dialogue_type = DialogueDisplay.CutsceneFade;

// Get dialogue
var _dialogue = global.dialogue_struct.intro_cutscene;

// Queue
array_foreach(_dialogue, scr_queueDialogue)