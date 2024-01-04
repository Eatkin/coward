speed = 1;
accel = 1;

// Queue our dialogue
for (var i = 0; i < 12; i++)
	scr_queueDialogue(global.dialogue_struct.keras_first_game[i]);
	
dead = false;
explosion = noone;