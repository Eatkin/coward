// Create a fade in cutscene
scr_create_transition(TransitionType.FadeIn, TransitionStyle.EaseInQuad, false, noone);

// Get dialogue
var _dialogue = global.dialogue_struct.keras_introduction;

// Queue
array_foreach(_dialogue, scr_queueDialogue)

dialogue_complete = false;