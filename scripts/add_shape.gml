///add_shape(shape)
// Intended to be called in the instance of the player

var shape = argument0;

var currentParentI = 0

while(true) {
    var chosen_parent = shapes[|currentParentI /*irandom_range(0, ds_list_size(shapes)-1/*)*/];
    var possible_sides_indexes = false;
    with(chosen_parent){
        var possible_sides = get_free_sides(shape);
        var possible_sides_indexes = possible_sides[0]
        var possible_sides_angles = possible_sides[1]
    }
    if(!possible_sides_indexes) {
    }
    else if(ds_list_size(possible_sides_indexes) == 0) {
        currentParentI++;
        var list_size = ds_list_size(shapes)
        if(currentParentI >= list_size){
            show_debug_message("No sides found");
            break;
        }
    } else {  
        // TODO: change this to be random
        // get index of chosen side (i), and to attach_shape_to_parent script
        with(chosen_parent){
            ds_list_add(other.shapes, attach_shape(possible_sides_indexes[|0], possible_sides_angles[|0], shape))
        }
        with(chosen_parent){
            used_sides[possible_sides_indexes[|0]] = true
        }
        break;
    }
}

