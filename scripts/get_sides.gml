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
if((object_index == obj_pentagon) or (object_index == obj_enemy_pentagon)){
    sides[0, 0] = sprite_centerX
    sides[0, 1] = sprite_bottom 
    sides[1, 0] = sprite_left + 10
    sides[1, 1] = sprite_top + 67
    sides[2, 0] = sprite_left + 24
    sides[2, 1] = sprite_top + 18
    sides[3, 0] = sprite_left + 75
    sides[3, 1] = sprite_top + 18
    sides[4, 0] = sprite_left + 90
    sides[4, 1] = sprite_top + 67

}
