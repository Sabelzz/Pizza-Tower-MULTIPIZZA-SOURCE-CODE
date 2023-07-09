with (other)
{
    if (!is_undefined(scr_transformationCheck(state)))
    {
        scr_sound(49)
        scr_sound(92)
        state = (1 << 0)
        if key_attack
        {
            if abs(movespeed < 10)
                movespeed = 10
            else
                movespeed = abs(movespeed)
            state = (69 << 0)
        }
        sprite_index = spr_idle
        instance_create(x, y, obj_poofeffect)
        image_index = 0
    }
}
