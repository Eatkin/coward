/// @description ease

var _coefficient = script_execute(easing_function, timer);

if (transition_type == TransitionType.FadeIn)	{
	_coefficient = 1 - _coefficient;
}

timer += timer_step;

timer = clamp(timer, 0, 1);

alpha = _coefficient;

if (jitter and irandom(10) == 0)
	alpha += 0.02 - random(0.04);
	
alpha = clamp(alpha, 0, 1);
	
if (timer == 1)	{
	if (destination == noone)
		instance_destroy();
	else
		room_goto(destination);
}