///normalize(vector)

var vector = argument0;
var length = sqrt(power(vector[0], 2) + power(vector[1], 2));

var new_vector;
new_vector[0] = vector[0] / length;
new_vector[1] = vector[1] / length;
return new_vector;

