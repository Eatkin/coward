/// @description actually draw the background

if (background_image != noone)	{
	if (background_effects == BackgroundEffects.Stretch)	{
		draw_sprite_stretched(background_image, 0, x, y, room_width, room_height);
	}
	else	{
		draw_sprite_ext(background_image, 0, x, y, background_scale, background_scale, 0, c_white, 1);
	}
}