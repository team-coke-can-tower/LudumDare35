///get_str_debug(arg)
// get the JSON string for an object

var arg = argument0;

var map = ds_map_create();
ds_map_add_list(map, "main", arg)

return json_encode(map)
