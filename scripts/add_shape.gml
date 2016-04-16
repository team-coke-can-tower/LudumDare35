///add_shape(shape)
// Intended to be called in the instance of the player

var shape = argument0;

while(true) {
    var chosen_parent = shapes[| irandom_range(0, ds_list_size(shapes)-1)];
    with(chosen_parent){
        var possible_sides = get_free_sides(shape);
    }
    if(ds_list_size(possible_sides) == 0) {
        continue;
    } else {
        var chosen_side = possible_sides[| 0];  // TODO: change this to be random
        // get index of chosen side (i), apss to attach_shape_to_parent script
        with(chosen_parent){
            ds_list_add(other.shapes, attach_shape(chosen_side[0], chosen_side[1], shape))
        }
        break;
    }
}

