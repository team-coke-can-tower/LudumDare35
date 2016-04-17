///deteriorate_shape()
///NB: called in the context of the shape.

if (current_health == full_health) {
    image_speed = 1;
    frame = 1;
} else {
    frame += 17;
}

current_health -= 1;

if(current_health == 0) {
    instance_destroy();
}

