///move_player(dx, dy)

var dx = argument0;
var dy = argument1;

for (i = 0; i < ds_list_size(shapes); i++) {
    shapes[| i].x += dx;
    shapes[| i].y += dy;
}

update_shapes()
