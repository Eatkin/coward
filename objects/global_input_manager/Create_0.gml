function clear_inputs()	{
	global.keys_pressed = [];
	global.keys_held = [];
	global.keys_released = [];
}

function get_input_state(key)	{
	// Get the value itself from the struct key
	// Why did I do this in such a cumbersome way?
	key = struct_get(inputs, key);
	// Fill in the inputs array
	if (keyboard_check_pressed(key))
		array_push(global.keys_pressed, key);
	if (keyboard_check(key))
		array_push(global.keys_held, key);
	if (keyboard_check_released(key))
		array_push(global.keys_released, key);
}

// This is probably really stupid because I can't loop over the enums
enum Keys {
	Up = vk_up,
	Down = vk_down,
	Left = vk_left,
	Right = vk_right,
	Interact = vk_space,
	AltUp = ord("W"),
	AltDown = ord("S"),
	AltLeft = ord("A"),
	AltRight = ord("D"),
}

// Define inputs struct
// I never need to explicitly refer to the keys of this struct
// So why am I using a struct instead of an array?
// Fuck knows man
inputs = {
	Up: Keys.Up,
	Down: Keys.Down,
	Left: Keys.Left,
	Right: Keys.Right,
	Interact: Keys.Interact,
	AltUp: Keys.AltUp,
	AltDown: Keys.AltDown,
	AltLeft: Keys.AltLeft,
	AltRight: Keys.AltRight,
}

clear_inputs();