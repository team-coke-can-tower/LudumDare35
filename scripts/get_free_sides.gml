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
        
        var potential_placement_offset = polar_to_cart(5, angle_center_to_edge)
        
        if((self.id == other.root_shape.id
         || overall_angle <= 90 || overall_angle >= 270)
         && !position_meeting(potential_placement_offset[0] + a, potential_placement_offset[1] + b, obj_triangle)){
            ds_list_add(free_sides_indexes, i)
            ds_list_add(free_sides_angles, angle_center_to_edge)
        }
    }
}

var final_array;
final_array[0] = free_sides_indexes
final_array[1] = free_sides_angles
return final_array
