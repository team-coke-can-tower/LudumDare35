/// shoot_all_bullets()
// called from the instance of the player, triggers shooting of bullets from all triangles that is
// owned from the player 

for (i = 0; i < array_length_1d(shapes); i++) {
    if(shapes[i].object_index == obj_triangle) {
        with(shapes[i]){
            shoot_bullets(true)
        }
    }
}
