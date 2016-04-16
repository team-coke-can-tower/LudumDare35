///Shoot bullet from all triangles

for (i = 0; i < array_length_1d(shapes); i++) {
    if(object_get_name(shapes[i]) == "obj_triangle") {
        bullet = instance_create(shapes[i].x, shapes[i].y, obj_bullet);
    }
}
