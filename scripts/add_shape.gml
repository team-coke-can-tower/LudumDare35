///add_shape(root, shape)
var root = argument0;
var shape = argument1;

while(true) {  // TODO: add countermeasures to infinite loop
    var chosen_parent = root.child_shapes[irandom_range(0, array_length_1d(root.child_shapes)-1)];
    var possible_sides = get_free_sides(chosen_parent);
    if(array_length_1d(possible_sides) == 0) {
        continue;
    } else {
        var chosen_side = possible_sides[0];  // TODO: change this to be random
        // TODO: calculate rotation and position of shape
        root.child_shapes[array_length_1d(root.child_shapes)] = shape;
        return root;
    }
}

