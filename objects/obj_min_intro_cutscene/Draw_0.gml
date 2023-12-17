/// @description stupid mouse effect thing

// For drawing the repeated sprites
var base_scale = 0.6;
var repeats = 12;
var scale_up = (1 - base_scale) / (repeats - 1);
// This is the lerp strength that we get to the mouse
var mouse_strength = 0.05;

var base_alpha = 1;
var min_alpha = 0.2;
var alpha_decay = (base_alpha - min_alpha) / (repeats - 1);

// Skip the last one because it's too distant from the others
for (var i = 0; i < repeats; i++)	{
	var xx = x;
	var yy = y;
	var mx = mouse_x;
	var my = mouse_y;
	var lerp_strength = power(mouse_strength, repeats - i) * sign(i);
	xx = lerp(xx, mx, lerp_strength);
	yy = lerp(yy, my, lerp_strength);
	
	var scale = base_scale + scale_up * i;
	
	draw_sprite_ext(sprite_index, image_index, xx, yy, scale, scale, image_angle, c_white, 1 - alpha_decay * i);
}