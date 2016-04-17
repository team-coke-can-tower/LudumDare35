///attach_shape(side_index, side_normal_angle, new_shape)
// called in the context of the parent of the new shape
// returns the new shape

var side_index = argument0;
var side_normal_angle = argument1;
var new_shape = argument2;

var new_shape_sprite = object_get_sprite(new_shape);
var edge_to_center;
if(new_shape == obj_triangle){
    edge_to_center = sprite_get_height(new_shape_sprite)/3;
}
else{
    edge_to_center = sprite_get_height(new_shape_sprite)/2;
}

var resolved_coords = polar_to_cart(edge_to_center, side_normal_angle)

var new_shapeX = translated_sides[side_index, 0] + resolved_coords[0]
var new_shapeY = translated_sides[side_index, 1] + resolved_coords[1]

var new_object = instance_create(new_shapeX, new_shapeY, new_shape);

new_object.image_angle = side_normal_angle - 90;
new_object.direction = side_normal_angle - 90;

with(new_object){
    update_shape()
}

return new_object;
