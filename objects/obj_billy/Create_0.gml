xspeed = 0;
yspeed = 0;

// Movement stuff
x_pos_last = x;
y_pos_last = y;
moving = false;

// Timing function for movement
timer = 0;
timer_step = 3 / room_speed;
easing_function = ease_out_quad;