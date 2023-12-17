// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ease_out_bounce(t){
	if (t < 4 / 11) {
		return (121 * t * t) / 16;
	} else if (t < 8 / 11) {
		return (363 / 40 * t * t) - (99 / 10 * t) + 17 / 5;
	} else if (t < 9 / 10) {
		return (4356 / 361 * t * t) - (35442 / 1805 * t) + 16061 / 1805;
	} else {
		return (54 / 5 * t * t) - (513 / 25 * t) + 268 / 25;
	}
}