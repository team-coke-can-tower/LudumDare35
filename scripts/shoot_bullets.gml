/// shoot_bullets(is_player)
// from the context of a triangle, shoot bullets from all corners
// is_player: if the triangle belongs to the player

var is_player = argument0;

// reload time reached 0
if (alarm[0] == -1){
    get_bounding_square()

    // generate top bullet
    var t_bullet = instance_create(sprite_centerX, sprite_top, obj_bullet);
    
    // lower-left
    var ll_bullet = instance_create(sprite_left, sprite_bottom, obj_bullet);
    var ll_direction = point_direction(sprite_centerX, sprite_centerY, sprite_left, sprite_bottom);
    ll_bullet.direction = ll_direction;
    ll_bullet.image_angle = ll_direction + 90;
    
    // lower-right
    var lr_bullet = instance_create(sprite_right, sprite_bottom, obj_bullet);
    var lr_direction = point_direction(sprite_centerX, sprite_centerY, sprite_right, sprite_bottom);
    lr_bullet.direction = lr_direction;
    lr_bullet.image_angle = lr_direction + 90;
    
    alarm[0] = 5 // set the next shooting time as 1/6 second (5/30)
}
