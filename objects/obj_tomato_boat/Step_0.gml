// Check the inputs
var hinput = scr_get_hinput();
var vinput = scr_get_vinput();

// If we register a change in direction we speed up a bit
var _dir = direction;

if (hinput != 0)
	direction = 90 * (hinput - 1);
if (vinput != 0)
	direction = - vinput * 90;
	
if (_dir != direction)	{
	speed += accel;
	has_moved = true;
}

image_angle = direction;

// Check collisions (badly lol)
if (place_meeting(x, y, obj_block))	{
	// TODO: Play explosion sound
	speed = 1;
	x = xstart;
	y = ystart;
	direction = 0;
}