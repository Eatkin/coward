// Create a fade in cutscene
scr_create_transition(TransitionType.FadeIn, TransitionStyle.EaseInQuad, false, noone);

// Set the dialogue manager's text type to fadey text
obj_dialogueManager.dialogue_type = DialogueDisplay.CutsceneFade;
// Also black otherwise we can't see it lol
obj_dialogueManager.colour = c_black;

// Get dialogue
var _dialogue = global.dialogue_struct.first_game_introduction;

// Queue
array_foreach(_dialogue, scr_queueDialogue)