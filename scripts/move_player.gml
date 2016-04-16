///move_player(dx, dy)

var dx = argument0;
var dy = argument1;

for (i = 0; i < array_length_1d(shapes); i++) {
    shapes[i].x += dx;
    shapes[i].y += dy;
}

