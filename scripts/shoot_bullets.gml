/// shoot_bullets(is_player)
// from the context of a triangle, shoot bullets from all corners
// is_player: if the triangle belongs to the player

var is_player = argument0;

// reload time reached 0
if (alarm[0] == -1){
    var sprite_leftX = x - sprite_xoffset
    var sprite_topY = y - sprite_yoffset
    var sprite_rightX = sprite_leftX + sprite_width
    var sprite_bottomY = sprite_topY + sprite_height

    // generate top bullet
    var t_bullet = instance_create(x, sprite_topY, obj_bullet);
    
    // lower-left
    var ll_bullet = instance_create(sprite_leftX, sprite_bottomY, obj_bullet);
    var ll_direction = point_direction(x, y, sprite_leftX, sprite_bottomY);
    ll_bullet.direction = ll_direction;
    ll_bullet.image_angle = ll_direction + 90;
    
    // lower-right
    var lr_bullet = instance_create(sprite_rightX, sprite_bottomY, obj_bullet);
    var lr_direction = point_direction(x, y, sprite_rightX, sprite_bottomY);
    lr_bullet.direction = lr_direction;
    lr_bullet.image_angle = lr_direction + 90;
    
    alarm[0] = 5 // set the next shooting time as 1/6 second (5/30)
}
