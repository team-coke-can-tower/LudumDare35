///add_shape(root, shape)
var root = argument0;
var shape = argument1;

while(true) {
    var chosen_parent = root.child_shapes[irandom_range(0, array_length_1d(root.child_shapes)-1)];
    var possible_sides = get_free_sides(chosen_parent);
    if(array_length_1d(possible_sides) == 0) {
        continue;
    } else {
        var chosen_side = possible_sides[0];  // TODO: change this to be random
        // get index of chosen side (i), apss to attach_shape_to_parent script
        for (i = 0; i < array_length_1d(chosen_parent.sides); i++) {
            if(chosen_parent.sides[i] == chosen_side) {
                attach_shape_to_parent(chosen_parent, shape, i);
                root.child_shapes[array_length_1d(root.child_shapes)] = shape;
                break;
            }
        }
        break;
    }
}

