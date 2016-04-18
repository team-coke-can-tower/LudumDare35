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
                ds_list_delete(shapes, i);
                //Lose condition is if root shape dies
                if(other.id == root_shape.id){
                    audio_stop_sound(snd_main_music);
                    room_goto(rm_game_over);
                }
                break;
            }
        }
    }
    image_speed = 1 
}
