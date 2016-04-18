///deteriorate_shape()
///NB: called in the context of the shape.

if (current_health == full_health) {
    image_speed = 1;
    frame = 1;
} else {
    frame += 17;
}

image_index = frame;
current_health -= 1;

if(current_health <= 0) {
    with(global.player){
        for(var i = 0;i < ds_list_size(shapes);i++){
            if(shapes[| i].id == other.id){
                ds_list_delete(shapes, i);
                //Lose condition is if root shape dies
                if(other.id == root_shape.id){
                    alarm[2] = 16;  //Player will end game soon
                    //Kill all shapes
                    /*
                    while(not ds_list_empty(shapes)) {
                        with(shapes[| 0]) deteriorate_shape();
                    }*/
                }
                break;
            }
        }
    }
    image_speed = 1 
}
