/// polar_to_cart(distance, angle)
// angle is measured in degrees
// resolved a polar coordinate to a cartisian, returns [x, y]
// resolved where +y and +x is the same as gamemaker
// and angles are measured the same as in gamemaker

var distance = argument0;
var angle = argument1;

var new_array;
new_array[0] = distance * cos(angle/360 * pi * 2)
new_array[1] = -distance * sin(angle/360 * pi * 2)

return new_array
