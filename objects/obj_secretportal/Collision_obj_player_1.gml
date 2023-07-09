if (secretActivated && (!(place_meeting(x, y, obj_secretPortalexit))))
{
    if (other.state != (110 << 0) && sprite_index == spr_secretPortal && ds_list_find_index(global.saveroom, id) == -1)
    {
        var _cutscene = cutscene_create([gml_Script_cutscene_secretPortal_start, gml_Script_cutscene_secretPortal_middle, gml_Script_cutscene_secretPortal_preend, gml_Script_cutscene_secretPortal_end])
        cutscene_declare_actor(id, "SECRETPORTAL")
        if is_undefined(storedState)
            storedState = self.functionState()
        with (_cutscene)
            storedState = other.storedState
        image_index = 0
        sprite_index = spr_secretPortal_tele
        scr_sound(195)
        ds_list_add(global.saveroom, id)
    }
}
