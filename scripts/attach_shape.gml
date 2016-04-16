///attach_shape(side_index, side_normal_angle, new_shape)
// called in the context of the parent of the new shape
// returns the new shape

var side_index = argument0;
var side_normal_angle = argument1;
var new_shape = argument2;

var new_shape_sprite = object_get_sprite(new_shape);

var new_shapeX = translated_sides[side_index, 0] + sprite_get_xoffset(new_shape_sprite) * sin(side_normal_angle)
var new_shapeY = translated_sides[side_index, 1] + sprite_get_yoffset(new_shape_sprite) * cos(side_normal_angle)

return instance_create(new_shapeX, new_shapeY, new_shape)
