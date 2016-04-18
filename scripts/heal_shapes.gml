///heal_shapes()
// called from the instance of the pentagon

for(var i = 0;i < ds_list_size(global.player.shapes);i++){
    if(distance_to_object(global.player.shapes[| i]) < 100){
        with (global.player.shapes[| i]){
            current_health = full_health
            frame = 0
            image_index = 0
            image_speed = 0
        }
    }
}

instance_destroy();
