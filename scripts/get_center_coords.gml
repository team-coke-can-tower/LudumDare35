sprite_centerX = x
if(object_index == obj_triangle || object_index == obj_enemy_triangle){
    sprite_centerY = y - 9
}
else if (object_index == obj_pentagon || object_index == obj_enemy_pentagon){
   sprite_centerY = y - 6                               
}
else{
    sprite_centerY = y
}
