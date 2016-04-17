/// shoot_bullets(is_player)
// from the context of a triangle, shoot bullets from all corners
// is_player: if the triangle belongs to the player

var is_player = argument0;

// reload time reached 0
if (alarm[0] == -1){
    // generate top bullet
    shoot_bullet(sprite_centerX, sprite_top, is_player)
    
    // lower-left
    shoot_bullet(sprite_left, sprite_bottom, is_player)
    
    // lower-right
    shoot_bullet(sprite_right, sprite_bottom, is_player)
    
    audio_play_sound(snd_laser, 1, false);
    
    if(is_player){
        alarm[0] = 30; // set the next shooting time as 1/6 second (5/30)
    }
}
