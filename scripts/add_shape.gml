///add_shape(shape)
// Intended to be called in the instance of the player

var shape = argument0;

var currentParentI = 0

while(true) {
    var chosen_parent = shapes[|currentParentI /*irandom_range(0, ds_list_size(shapes)-1/*)*/];
    with(chosen_parent){
        var possible_sides = get_free_sides(shape);
        var possible_sides_indexes = possible_sides[0]
        var possible_sides_angles = possible_sides[1]
    }
    if(ds_list_size(possible_sides_indexes) == 0) {
        currentParentI++;
        var list_size = ds_list_size(shapes)
        if(currentParentI > list_size){
            show_debug_message("No sides found");
            break;
        }
    } else {  // TODO: change this to be random
        // get index of chosen side (i), apss to attach_shape_to_parent script
        with(chosen_parent){
            var arr11 = possible_sides_indexes[|0]
            var arr12 = possible_sides_indexes[|1]
            var arr13 = possible_sides_indexes[|2]
            var arr21 = possible_sides_angles[|0]
            var arr22 = possible_sides_angles[|1]
            var arr23 = possible_sides_angles[|2]
            ds_list_add(other.shapes, attach_shape(possible_sides_indexes[|0], possible_sides_angles[|0], shape))
        }
        with(chosen_parent){
            used_sides[possible_sides_indexes[|0]] = true
        }
        break;
    }
}

