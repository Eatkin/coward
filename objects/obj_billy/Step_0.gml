// Grab inputs
// Horrible
var hinput = max(array_contains(global.keys_held, Keys.Right), array_contains(global.keys_held, Keys.AltRight)) - max(array_contains(global.keys_held, Keys.Left), array_contains(global.keys_held, Keys.AltLeft));
var vinput = max(array_contains(global.keys_held, Keys.Down), array_contains(global.keys_held, Keys.AltDown)) - max(array_contains(global.keys_held, Keys.Up), array_contains(global.keys_held, Keys.AltUp));

// Now we can move if applicable
var grid_size = 16

// Handles collisions and shit
if (!moving)	{
	// Can't move diagonally so prioritise horizontal if possible
	if (hinput != 0)	{
		if (!place_meeting(x + hinput * grid_size, y, obj_block))	{
			vinput = 0;
			xspeed = hinput;
		}
	}

	if (vinput != 0)	{
		if (!place_meeting(x, y + vinput * grid_size, obj_block))	{
			yspeed = vinput;
		}
	}
	
	// Set moving flag and also image angle
	if (xspeed != 0 or yspeed != 0)	{
		moving = true;
		image_angle = darctan2(-yspeed, xspeed);
	}
}

// Actually move
if (moving)	{
	timer += timer_step;
	timer = clamp(timer, 0, 1);
	// Set our position based on xspeed/yspeed
	var _coefficient = script_execute(easing_function, timer);
	x = x_pos_last + _coefficient * grid_size * xspeed;
	y = y_pos_last + _coefficient * grid_size * yspeed;
	// If we hit the end of the timing function reset everything
	if (timer == 1)	{
		timer = 0;
		moving = false;
		xspeed = 0;
		yspeed = 0;
		x_pos_last = x;
		y_pos_last = y;
	}
}

// Die
if (place_meeting(x, y, obj_maze_enemy1))	{
	x = xstart;
	y = ystart;
	x_pos_last = x;
	y_pos_last = y;
	xspeed = 0;
	yspeed = 0;
}

// Now control the tweens
var dx = abs(x - xprevious);
var dy = abs(y - yprevious);
var dmax = max(dx, dy);
/* Use this to calculate max_movement
if (dmax != 0)
	show_message(dmax / grid_size);
	*/

// We ALWAYS stretch image_xscale because of the image_angle rotation
// Largest movement is gonna be about 0.07, so base our stretching off that
var max_movement = 0.1 * grid_size;
var dscale = 0.5 * dmax / max_movement;
var target_xscale = 1 + dscale;
var target_yscale = 1 - dscale;
var lerp_strength = 0.5;
image_xscale = lerp(image_xscale, target_xscale, lerp_strength);
image_yscale = lerp(image_yscale, target_yscale, lerp_strength);