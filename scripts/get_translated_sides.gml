/// get_translated_sides()
// loads the translated sides positions of a shape as a property
// called in the context of a shape


for(var i = 0;i < array_length_1d(sides);i++){
    translated_sides[i] = rotate_point_with_origin(
        sides[i, 0],
        sides[i, 1],
        x,
        y,
        direction)
}

