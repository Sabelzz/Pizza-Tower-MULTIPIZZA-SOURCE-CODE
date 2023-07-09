flags.do_once_per_save = 1
function condition() //gml_Script_anon_gml_RoomCC_sucrose_1_6_Create_41_gml_RoomCC_sucrose_1_6_Create
{
    var _bg = layer_background_get_id_fixed("Backgrounds_far")
    layer_change_background(506, 1317)
    layer_background_index(_bg, 0)
}

function condition() //gml_Script_anon_gml_RoomCC_sucrose_1_6_Create_235_gml_RoomCC_sucrose_1_6_Create
{
    return (audio_sound_get_track_position(global.music) >= 8.15 && obj_music.music == 53);
}

