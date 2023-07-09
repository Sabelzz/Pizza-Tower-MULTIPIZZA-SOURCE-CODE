function canCollide(argument0) //gml_Script_anon_gml_Object_obj_platform_Create_0_13_gml_Object_obj_platform_Create_0
{
    if (argument0 == undefined)
        argument0 = obj_player
    switch argument0
    {
        case obj_player:
        case 578:
            var _state = (global.freezeframe ? argument0.frozenstate : argument0.state)
            return _state != (59 << 0);
        default:
            return 1;
    }

}

