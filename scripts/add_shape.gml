///add_shape(shape)
// Intended to be called in the instance of the player

var shape = argument0;

while(true) {
    var chosen_parent = shapes[| irandom_range(0, ds_list_size(shapes)-1)];
    var possible_sides = get_free_sides(chosen_parent);
    if(array_length_1d(possible_sides) == 0) {
        continue;
    } else {
        var chosen_side = possible_sides[0];  // TODO: change this to be random
        // get index of chosen side (i), apss to attach_shape_to_parent script
        for (i = 0; i < array_length_1d(chosen_parent.sides); i++) {
            if(chosen_parent.sides[i] == chosen_side) {
                with(chosen_parent){
                    attach_shape(shape, i);
                }
                shapes[array_length_1d(shapes)] = shape;
                break;
            }
        }
        break;
    }
}

