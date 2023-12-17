// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_transition(transition_type, transition_style, jitter, destination){
	var alpha = (transition_type == TransitionType.FadeIn)	?	1	:	0;
	var vars = {
		transition_type: transition_type,
		transition_style: transition_style,
		alpha: alpha,
		jitter: jitter,
		destination: destination
	}
	
	var _t = instance_create_layer(0, 0, layer, obj_transition, vars);
	
	// User event 0 sets up the easing functions and things 
	with (_t)
		event_user(0);
}