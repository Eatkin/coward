var grid_size = 16;

// Reverse when we hit a wall
if (!moving)	{
	if (place_meeting(x, y + yspeed * grid_size, obj_block))	{
		yspeed *= -1;
	}
	
	wait_time--;
	
	if (wait_time <= 0)	{
		moving = true;
		wait_time = wait_time_max;
	}
}

if (moving)	{
	timer += timer_step;
	timer = clamp(timer, 0, 1);
	var _coefficient = script_execute(easing_function, timer);
	y = y_pos_last + _coefficient * grid_size * yspeed;
	if (timer == 1)	{
		timer = 0;
		moving = false;
		y_pos_last = y;
	}
}

var dy = abs(y - yprevious);

// Massive overestimate but these are slow enemies so it's fine for them not to stretch too much
var max_movement = 0.1 * grid_size;
var dscale = 0.5 * dy / max_movement;
var target_yscale = 1 + dscale;
var target_xscale = 1 - dscale;
var lerp_strength = 0.5;

image_xscale = lerp(image_xscale, target_xscale, lerp_strength);
image_yscale = lerp(image_yscale, target_yscale, lerp_strength);