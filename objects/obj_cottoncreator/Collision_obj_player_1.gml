with (obj_player)
{
    if (state != (88 << 0) && state != (97 << 0) && state != (77 << 0) && state != (98 << 0) && state != 112)
    {
        global.combofreeze = 30
        state = (88 << 0)
        if (movespeed > 6)
            movespeed = 6
        with (instance_create(x, y, obj_poofeffect))
            color = 2
        sprite_index = spr_cottonidle
        var myButton1 = (get_control_string(global.key_jump) + get_control_string(global.key_jump))
        var myButton2 = get_control_string(global.key_slap)
        scr_controlprompt((((("[spr_buttonfont]" + myButton1) + "[spr_promptfont] Double Jump  [spr_buttonfont]") + myButton2) + "[spr_promptfont] Attack"))
    }
}
