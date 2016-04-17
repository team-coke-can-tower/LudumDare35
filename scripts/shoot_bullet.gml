///shoot_bullet(x_location, y_location, is_player)
// shoot a bullet from a non-rotated coordinate x, y
// called from the instance of a triangle

var static_x = argument0;
var static_y = argument1;
var is_player = argument2;

var tranformed_coords = rotate_point_with_origin(static_x, static_y, x, y, direction)

var bullet = instance_create(tranformed_coords[0], tranformed_coords[1], obj_bullet);
var bullet_direction = point_direction(sprite_centerX, sprite_centerY, tranformed_coords[0], tranformed_coords[1]);
bullet.direction = bullet_direction;
bullet.image_angle = bullet_direction + 90;
bullet.from_enemy = not is_player;
