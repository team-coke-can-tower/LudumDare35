/// get_free_sides(shape)
// called from the context of the parent, with other being the root
// returns array of sides
// sides have format [side index (as 2d array), side normal angle]

var shape = argument0;

var free_sides_indexes = ds_list_create()
var free_sides_angles = ds_list_create()


for(var i = 0;i <= array_length_1d(sides);i++){
    if(!used_sides[i]){
        var a = translated_sides[i, 0];
        var b = translated_sides[i, 1]
        var angle_center_to_edge = point_direction(x, y, a, b);
        
        if(self.id != other.root_shape.id){
            var angle_root_to_parent = point_direction(other.x, other.y, x, y);
            var overall_angle = abs(angle_center_to_edge - angle_root_to_parent);
        }
        
        var collides = false;
        
        /*
        var potential_placement_offset = polar_to_cart(5, angle_center_to_edge);
        collides |= position_meeting(potential_placement_offset[0] + a, potential_placement_offset[1] + b, obj_triangle)
        collides |= position_meeting(potential_placement_offset[0] + a, potential_placement_offset[1] + b, obj_square)
        var potential_placement_offset2 = polar_to_cart(50, angle_center_to_edge);
        collides |= position_meeting(potential_placement_offset2[0] + a, potential_placement_offset2[1] + b, obj_triangle)
        collides |= position_meeting(potential_placement_offset2[0] + a, potential_placement_offset2[1] + b, obj_square)
        var potential_placement_offset3 = polar_to_cart(57, angle_center_to_edge + 22.5);
        collides |= position_meeting(potential_placement_offset3[0] + a, potential_placement_offset3[1] + b, obj_triangle)
        collides |= position_meeting(potential_placement_offset3[0] + a, potential_placement_offset3[1] + b, obj_square)
        var potential_placement_offset4 = polar_to_cart(57, angle_center_to_edge - 22.5);
        collides |= position_meeting(potential_placement_offset4[0] + a, potential_placement_offset4[1] + b, obj_triangle)
        collides |= position_meeting(potential_placement_offset4[0] + a, potential_placement_offset4[1] + b, obj_square)*/
        
        if((self.id == other.root_shape.id
         || overall_angle <= 90 || overall_angle >= 270)
         && !collides){
            ds_list_add(free_sides_indexes, i)
            ds_list_add(free_sides_angles, angle_center_to_edge)
        }
    }
}

var final_array;
final_array[0] = free_sides_indexes
final_array[1] = free_sides_angles
return final_array
