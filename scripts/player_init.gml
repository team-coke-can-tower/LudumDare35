///Initialize attributes

root_shape = instance_create(x, y, obj_triangle); // root triangle shape
root_shape.used_sides[@0] = false // set all sides as useable
shapes = ds_list_create()
shapes[| 0] = root_shape;  // all shapes belonging to player object
move_speed = 5;  // universal speed of player shapes
