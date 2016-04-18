if((object_index == obj_triangle) or (object_index == obj_enemy_triangle)){
    sides[0, 0] = sprite_centerX
    sides[0, 1] = sprite_bottom
    sides[1, 0] = sprite_left + sprite_width / 4
    sides[1, 1] = sprite_centerY
    sides[2, 0] = sprite_right - sprite_width / 4
    sides[2, 1] = sprite_centerY
}
if((object_index == obj_square) or (object_index == obj_enemy_square)){
    sides[0, 0] = sprite_centerX
    sides[0, 1] = sprite_top
    sides[1, 0] = sprite_centerX
    sides[1, 1] = sprite_top
    sides[2, 0] = sprite_left
    sides[2, 1] = sprite_centerY
    sides[3, 0] = sprite_right
    sides[3, 1] = sprite_centerY
}
