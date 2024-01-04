/// @description Set up properties for the room

background_reset();

switch (room)	{
	case rm_intro_cutscene:
		background_image = spr_marble_slurred;
		background_yspeed = -0.1;
		background_motion = BackgroundMotion.ScrollVertical;
		background_effects = BackgroundEffects.MoveWithMouse;
		
		// Set x/y coordinates to centre
		var bw = sprite_get_width(background_image);
		var bh = sprite_get_height(background_image);
		x = (room_width - bw) * 0.5;
		y = (room_height - bh) * 0.5;
		background_x = x;
		background_y = y;
		break;
		
	case rm_first_game_intro:
		background_image = spr_desk_background;
		background_yspeed = -0.1;
		background_xspeed = 0.16;
		background_motion = BackgroundMotion.ScrollBoth;
		background_effects = BackgroundEffects.MoveWithMouse;
		
		background_scale = 1.2;
		
		// Set x/y coordinates to somewhere a bit off centre
		var bw = sprite_get_width(background_image);
		var bh = sprite_get_height(background_image);
		x = (room_width - bw) * 0.4;
		y = (room_height - bh) * 0.6;
		background_x = x;
		background_y = y;
		break;
		
	case rm_tomato_boat:
		background_image = spr_tomato_boat_bg;
		background_effects = BackgroundEffects.Stretch;
		background_x = 0;
		background_y = 0;
		break;
}

/* Probably don't want to do this
// Set y-position based on the background yspeed
if (background_motion = BackgroundMotion.ScrollVertical)	{
	if (sign(background_yspeed) <= 0)	{
		y = 0;
	}
	else	{
		y = room_height - sprite_get_height(background_image);
	}
}*/