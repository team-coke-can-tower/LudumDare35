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
    with(global.player){
        for(var i = 0;i < ds_list_size(shapes);i++){
            if(shapes[| i].id == other.id){
                ds_list_delete(shapes, i)
                if(ds_list_size(shapes) == 0){
                    room_goto(rm_game_over)
                }
                break;
            }
        }
    }
    instance_destroy();
}
