// room_goto(rm_intro_cutscene);

// Setup macros
#macro RES_WIDTH 960
#macro RES_HEIGHT 540

// Globals
draw_set_font(fnt_default);
scr_init_dialogue_struct();

var destination = rm_tomato_boat;
room_goto(destination);

randomise();