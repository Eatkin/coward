function clamp_bounding_box()	{
	// Move to be within room bounds
	while (bbox_left < 0)
		x++;
	while (bbox_right > room_width)
		x--;
	while (bbox_top < 0)
		y++;
	while (bbox_bottom > room_height)
		y--;
}

xspeed = -0.25 + random(0.5);
yspeed = -0.25 + random(0.5);

x = irandom(room_width);
y = irandom(room_height);

image_angle = irandom(360);

var min_rot_speed = 0.01;
do	{
	rotation_speed = -0.2 + random(0.4);
} until (abs(rotation_speed) > min_rot_speed);

clamp_bounding_box();