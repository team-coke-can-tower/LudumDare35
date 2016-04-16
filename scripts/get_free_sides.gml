/// get_free_sides(shape)
// called from the context of the parent, with other being the root
// returns array of sides
// sides have format [side index (as 2d array), side normal angle]

var shape = argument0;

var free_sides_indexes = ds_list_create()
var free_sides_angles = ds_list_create()


for(var i = 0;i <= array_length_1d(sides);i++){
    if(!shape.used_sides[i]){
        var a = translated_sides[i, 0];
        var b = translated_sides[i, 1]
        var angle_center_to_edge = point_direction(geometric_centerX, geometric_centerY, a, b);
        
        if(self.id != other.root_shape.id){
            var angle_root_to_parent = point_direction(other.x, other.y, x, y)
        }
        
        if(self.id == other.root_shape.id || abs(angle_center_to_edge - angle_root_to_parent) <= 90){
            ds_list_add(free_sides_indexes, i)
            ds_list_add(free_sides_angles, angle_center_to_edge)
        }
    }
}

var final_array;
final_array[0] = free_sides_indexes
final_array[1] = free_sides_angles
return final_array
