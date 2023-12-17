enum TransitionType	{
	FadeIn,
	FadeOut
}

enum TransitionStyle {
	Linear,
	BounceIn,
	BounceOut,
	EaseInQuad
}

// Timing function stuff
timer = 0;
timer_step = 0.5 / room_speed;

easing_function = ease_in_linear