xspeed = 0;
yspeed = 0;

// Movement stuff
x_pos_last = x;
y_pos_last = y;
moving = false;

// Timing function for movement
timer = 0;
timer_step = 3 / room_speed;
easing_function = ease_out_quad;

// Queue our first bit of dialogue
for (var i = 0; i < 3; i++)
	scr_queueDialogue(global.dialogue_struct.first_game_walkthrough[i]);