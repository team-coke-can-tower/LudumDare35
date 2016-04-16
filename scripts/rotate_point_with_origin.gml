///rotate_point_with_origin(pointX, pointY, originX, originY, theta)

var pointX = argument0;
var pointY = argument1;
var originX = argument2;
var originY = argument3;
var theta = argument4;

var origin_to_point = point_direction(originX, originY, pointX, pointY)
var overall_angle = origin_to_point + theta

var new_point;
new_point[0] = cos(overall_angle)
new_point[1] = sin(overall_angle)