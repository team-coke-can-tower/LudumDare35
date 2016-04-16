///move_player(player, dx, dy)

var player = argument0;
var dx = argument1;
var dy = argument2;

for (i = 0; i < array_length_1d(player.shapes); i++) {
    player.shapes[i].x += dx;
    player.shapes[i].y += dy;
}

