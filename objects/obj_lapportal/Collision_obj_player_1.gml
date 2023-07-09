if (other.state != (110 << 0) && sprite_index == spr_lappingportal_idle && global.panic)
{
    with (other)
    {
        x = other.x
        y = other.y
        targetDoor = other.targetDoor
        targetRoom = other.targetRoom
        image_index = 0
        sprite_index = spr_lappingportal_enter
    }
    ds_list_add(global.saveroom, id)
    cutscene_create([gml_Script_cutscene_lapPortal_start, gml_Script_cutscene_lapPortal_middle, gml_Script_cutscene_lapPortal_end])
    instance_destroy()
}
