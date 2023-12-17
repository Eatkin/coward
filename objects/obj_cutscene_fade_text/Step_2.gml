// We want to rise up as we count down expiry
// Then after that we can reduce alpha to 0
expiry--;

// Fade in initially
if (!faded_in)	{
	alpha = lerp(alpha, 1, 0.2);
	if (1 - alpha < 0.01)	{
		alpha = 1;
		faded_in = true;
	}
}

// Rise upwards with a decaying movement rate
y -= movement_rate;
movement_rate *= movement_rate_decay

// Fade out and destroy5
if (expiry <= 0)	{
	alpha = lerp(alpha, 0, 0.05);
	if (alpha < 0.01)	{
		alpha = 0;
		destroyTriggered = true;
	}
}