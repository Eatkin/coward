/// @description

draw_set_colour(c_white);
draw_set_alpha(0.8);

//Horizontal coordinates
var screenWidth		=	display_get_gui_width();
var h_spacing		=	8;
var boxWidth		=	sprite_width;

var xdraw			=	screenWidth - boxWidth - h_spacing;
xdraw				*=	0.5;

//Veritcal coordinates
var screenHeight	=	display_get_gui_height();
var v_spacing		=	8;
var boxHeight		=	sprite_height;

var ydraw			=	screenHeight - boxHeight - v_spacing;

//Draw dialogue box
draw_sprite(sprite_index, 0, xdraw, ydraw);

draw_set_alpha(1);

//Draw the dialogue
xdraw				+=	h_spacing * 2;
ydraw				+=	4;
draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_text(xdraw, ydraw, stringToShow);

if (dialogueComplete)	{
	//Reset locals to top left of dialouge box
	/*This is where we'd draw a thing to say dialogue has finished, but this is from remember mary
	if we do this "sprite_index" refers to the sprite that shows we're finished, a little arrow or whatever
	xdraw			-=	4;
	ydraw			-=	4;
	xdraw			+=	sprite_width;
	ydraw			+=	sprite_get_height(spr_dialoguebox)*0.9;
	draw_sprite(sprite_index, image_index, xdraw, ydraw);		//Our sprite is defined as the "dialogue finished" sprite
	*/
}