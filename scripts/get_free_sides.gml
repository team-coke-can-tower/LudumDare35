///get_free_sides(shape)
// called in the context of the shape

var shape = argument0;

var free_sides = ds_list_create()

for(var i = 0;i < ds_list_size(sides);i++){
    if(!shape.used_sides[i]){
        var angle_center_to_side = point_direction(x, y, sides[i, 0], sides[i, 1])
        var angle_
    }
}

