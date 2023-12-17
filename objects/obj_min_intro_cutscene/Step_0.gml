x += xspeed;
y += yspeed;

image_angle += rotation_speed;

// Bounce against room bounds
if (bbox_left < 0 or bbox_right > room_width)	{
	xspeed *= -1;
}
	
if (bbox_top < 0 or bbox_bottom > room_height)	{
	yspeed *= -1;
}

clamp_bounding_box();