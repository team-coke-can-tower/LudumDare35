/// init_triangle()
// initialises the triangle with the required properties

get_bounding_square()

sides[0, 0] = x
sides[0, 1] = sprite_bottom
sides[1, 0] = sprite_left + x / 2
sides[1, 1] = y
sides[2, 0] = sprite_right - x / 2
sides[2, 1] = y

used_sides[0] = false
used_sides[1] = false
used_sides[2] = false

full_health = 4
current_health = 4
frame = 0

image_speed = 0

