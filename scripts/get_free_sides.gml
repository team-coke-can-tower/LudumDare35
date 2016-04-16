/// get_free_sides(shape)
// called from the context of the parent, with other being the root
// returns array of sides
// sides have format [side index (as 2d array), side normal angle]

var shape = argument0;

var free_sides = ds_list_create()


for(var i = 0;i < array_length_1d(sides);i++){
    if(!shape.used_sides[i]){
        var angle_center_to_edge = point_direction(
            x, y,
            translated_sides[i, 0],
            translated_sides[i, 1]);
        
        if(self.id != other.root_shape.id){
            var angle_root_to_parent = point_direction(other.x, other.y, x, y)
        }
        
        if(self.id == other.root_shape.id || abs(angle_center_to_edge - angle_root_to_parent) <= 90){
            var side;
            side[0] = i
            side[1] = angle_center_to_edge
            
            ds_list_add(free_sides, side)
        }
    }
}

return free_sides
