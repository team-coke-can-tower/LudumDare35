///shoot_bullet(x_location, y_location, is_player)
// shoot a bullet from a non-rotated coordinate x, y

var x_location = argument0;
var y_location = argument1;
var is_player = argument2;

var bullet = instance_create(x_location, y_location, obj_bullet);
var bullet_direction = point_direction(sprite_centerX, sprite_centerY, x_location, y_location);
bullet.direction = bullet_direction;
bullet.image_angle = bullet_direction + 90;
bullet.from_enemy = not is_player;
