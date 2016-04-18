///update_rotation()
// rotate the current player to face the mouse

mouse_angle = point_direction(global.player.x, global.player.y, mouse_x, mouse_y)

var root_shape = global.player.root_shape
central_tri_center_to_bottom = 
    point_direction(root_shape.translated_sides[0], root_shape.translated_sides[1],  global.player.x, global.player.y);

rotate_player(mouse_angle - central_tri_center_to_bottom);
