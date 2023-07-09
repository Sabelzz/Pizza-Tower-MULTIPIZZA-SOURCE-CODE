function condition() //gml_Script_anon_gml_RoomCC_sucrose_1_7_Create_72_gml_RoomCC_sucrose_1_7_Create
{
    var _bg2 = layer_background_get_id_fixed("Backgrounds_far")
    layer_background_speed(_bg2, 0.35)
}

function condition() //gml_Script_anon_gml_RoomCC_sucrose_1_7_Create_202_gml_RoomCC_sucrose_1_7_Create
{
    var _bg = layer_background_get_id_fixed("Backgrounds_far")
    var _bg_sprite = layer_background_get_sprite(_bg)
    var _speed = layer_background_get_speed(_bg)
    return (_speed == 0 && _bg_sprite == 659);
}

