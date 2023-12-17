/// @description Variable initialisation

enum BackgroundMotion	{
	None,
	ScrollHorizontal,
	ScrollVertical,
	ScrollBoth,
}

enum BackgroundEffects {
	None,
	MoveWithMouse,
}

function background_reset()	{
	x = 0;
	y = 0;
	
	background_image = noone;
	background_xspeed = 0;
	background_yspeed = 0;
	background_motion = BackgroundMotion.None;
	background_effects = BackgroundEffects.None;
	
	background_x = 0;
	background_y = 0;
	
	background_scale = 1;
	
	// Timing functions for easings etc
	timer = 0;
	timer_step = 0;
}

background_reset();