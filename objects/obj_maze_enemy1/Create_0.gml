yspeed = choose(-1, 1);

y_pos_last = y;
moving = false;

timer = 0;
timer_step = 1 / room_speed;
easing_function = ease_out_quad;

// How long to wait between each step
wait_time_max = room_speed;
wait_time = irandom(wait_time_max);