/// @description Set up what easing function to use

switch (transition_style)	{
	case TransitionStyle.Linear:
		easing_function = ease_in_linear;
		break;
	case TransitionStyle.BounceIn:
		easing_function = ease_in_bounce;
		break;
	case TransitionStyle.BounceOut:
		easing_function = ease_out_bounce;
		break;
	case TransitionStyle.EaseInQuad:
		easing_function = ease_in_quad;
		break;
}
