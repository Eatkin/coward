// Grab inputs
// Except I need to check if these values are in the inputs array, they're not functions
// What was I thinking??

var hinput = max(array_contains(global.keys_held, Keys.Right), array_contains(global.keys_held, Keys.AltRight)) - max(array_contains(global.keys_held, Keys.Left), array_contains(global.keys_held, Keys.AltLeft));
var vinput = max(array_contains(global.keys_held, Keys.Down), array_contains(global.keys_held, Keys.AltDown)) - max(array_contains(global.keys_held, Keys.Up), array_contains(global.keys_held, Keys.AltUp));

// Now we can move if applicable
var grid_size = 16
// Check if we're snapped to the grid using bitwise operators for no reason whatsoever lol
var is_snapped = (x - sprite_xoffset) % grid_size == 0;
is_snapped &= (y - sprite_yoffset) % grid_size == 0;

// Handles collisions and shit
// TODO: Use tweening and easing for squash/stretch and movement instead of linear
if (is_snapped)	{
	xspeed = 0;
	yspeed = 0;

	// Can't move diagonally so prioritise horizontal if possible
	if (hinput != 0)	{
		if (!place_meeting(x + hinput * grid_size, y, obj_block))	{
			vinput = 0;
			xspeed = maxspeed * sign(hinput)
		}
	}

	if (vinput != 0)	{
		if (!place_meeting(x, y + vinput * grid_size, obj_block))	{
			yspeed = maxspeed * sign(vinput);
		}
	}
}

// Actually move
x += xspeed;
y += yspeed;

// Set image angle
if (xspeed != 0 or yspeed != 0)	{
	image_angle = darctan2(yspeed, xspeed);
}