/// @description Movement functions

switch (background_motion)	{
	case BackgroundMotion.ScrollHorizontal:
		background_x += background_xspeed;
		// Clamp
		if (background_settings != BackgroundSettings.NoClamp)
			background_x = clamp(background_x, room_width - sprite_get_width(background_image) * background_scale, 0);
		break;
	
	case BackgroundMotion.ScrollVertical:
		background_y += background_yspeed;
		// Clamp the y position
		if (background_settings != BackgroundSettings.NoClamp)
			background_y = clamp(background_y, room_height - sprite_get_height(background_image) * background_scale, 0);
		break;
		
	case BackgroundMotion.ScrollBoth:
		background_x += background_xspeed;
		background_y += background_yspeed;
		// Clamp
		if (background_settings != BackgroundSettings.NoClamp)	{
			background_x = clamp(background_x, room_width - sprite_get_width(background_image) * background_scale, 0);
			background_y = clamp(background_y, room_height - sprite_get_height(background_image) * background_scale, 0);
		}
		break;
}

switch (background_effects)	{
	case BackgroundEffects.MoveWithMouse:
		// Maximum pixels the background can move
		var max_movement = move_with_mouse_strength;
		var mx_offset = (mouse_x / room_width) - 0.5;
		var my_offset = (mouse_y / room_height) - 0.5;
		
		x = lerp(x, background_x + mx_offset * max_movement, 0.1);
		y = lerp(y, background_y + my_offset * max_movement, 0.1);
		break;
		
	default:
		x = background_x;
		y = background_y;
		break;
}