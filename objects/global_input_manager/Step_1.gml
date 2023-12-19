// Clear the arrays
clear_inputs();

// Loop over the struct to gather the state of each relevant key
var names = struct_get_names(inputs);
array_foreach(names, get_input_state);