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
}

image_angle = direction;

// Check collisions (badly lol)
if (place_meeting(x, y, obj_block) and !dead)	{
	scr_play_sound(snd_explode);
	speed = 0;
	dead = true;
	explosion = instance_create_layer(x, y, layer, obj_explode);
	visible = false;
}

if (dead)	{
	if (!instance_exists(explosion))	{
		explosion = noone;
		speed = 1;
		direction = 0;
		visible = true;
		dead = false;
		x = xstart;
		y = ystart;
	}
}