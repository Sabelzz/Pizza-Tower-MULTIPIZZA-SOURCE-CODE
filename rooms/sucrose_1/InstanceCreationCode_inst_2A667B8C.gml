function condition() //gml_Script_anon_gml_RoomCC_sucrose_1_5_Create_59_gml_RoomCC_sucrose_1_5_Create
{
    var _bg2 = layer_background_get_id_fixed("Backgrounds_far")
    layer_background_speed(_bg2, 0)
}

function condition() //gml_Script_anon_gml_RoomCC_sucrose_1_5_Create_187_gml_RoomCC_sucrose_1_5_Create
{
    var _bg = layer_background_get_id_fixed("Backgrounds_far")
    var _bg_sprite = layer_background_get_sprite(_bg)
    var _index = layer_background_get_index(_bg)
    var _frames = sprite_get_number(_bg_sprite)
    return (_index >= (_frames - 1) && _bg_sprite == 1317);
}

