/// @description draw our black rectangle

if (alpha == 0)
	exit;
	
draw_set_alpha(alpha);
var x1 = 0;
var y1 = 0;
var x2 = RES_WIDTH;
var y2 = RES_HEIGHT;
draw_set_colour(c_black);
draw_rectangle(x1, y1, x2, y2, false);
draw_set_alpha(1);