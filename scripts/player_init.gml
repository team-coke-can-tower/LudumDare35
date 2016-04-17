///Initialize attributes

root_shape = instance_create(x, y, obj_triangle); // root triangle shape
root_shape.used_sides[@0] = false // set all sides as useable
shapes = ds_list_create()
shapes[| 0] = root_shape;  // all shapes belonging to player object
move_speed = 5;  // universal speed of player shapes

global.player = id

// General init
/*
global.shapes_properties = ds_map_create()

triangle_sprite = object_get_sprite(new_shape);

triangle_properties = ds_map_create()
triangle_properties[? "nearest_edge_to_center"] = sprite_get_height(new_shape_sprite)/3
global.shapes_properties[? obj_triangle] = 7*/
