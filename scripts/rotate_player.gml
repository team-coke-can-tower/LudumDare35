///rotate_player(amount)
// called from the context of the player

var amount = argument0;

for(var i = 0;i < ds_list_size(shapes);i++){
    with(shapes[|i]){
        var new_center = rotate_point_with_origin(x, y, global.player.x, global.player.y, amount)
        
        if(new_center = global.player.root_shape){
            new_center[0] = x
            new_center[1] = y
        }
        
        x = new_center[0]
        y = new_center[1];
        
        image_angle += amount;
        direction = image_angle
        update_shape()
    }
}
