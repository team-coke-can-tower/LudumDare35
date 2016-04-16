///get_free_sides(shape)
// called in the context of a shape

/// get_free_sides(shape)
// called from the context of the player
// returns array of sides
// sides have format [[side index (as 2d array)], [side normal angles]]

var shape = argument0;

var free_sides = ds_list_create()

for(var i = 0;i < ds_list_size(sides);i++){
    if(!shape.used_sides[i]){
        translated_sides = get_translated_sides()
        var angle_center_to_edge = point_direction(
            shape.x, shape.y,
            translated_sides[i, 0],
            translated_sides[i, 1]);
        
        var angle_root_to_shape = point_direction(x, y, shape.x, shape.y)
        
        if(abs(angle_center_to_edge - angle_root_to_shape) <= 90){
            var side;
            side[0] = i
            side[1] = angle_center_to_edge
            
            ds_list_add(free_sides, side)
        }
    }
}

