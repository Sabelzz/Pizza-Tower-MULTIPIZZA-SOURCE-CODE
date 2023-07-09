if (activetimer == 0)
{
    with (other)
    {
        if (key_jump && (state == (60 << 0) || state == (68 << 0) || state == (69 << 0) || state == (70 << 0) || state == (119 << 0)) && (!grounded))
        {
            if (!((state == (60 << 0) || state == (68 << 0) || state == (69 << 0) || state == (70 << 0) || state == (119 << 0))))
                state = (60 << 0)
            jumpAnim = 0
            jumpstop = 0
            vsp = -11
            image_index = 0
            scr_sound(90)
            other.activetimer = 100
            scr_sleep(100)
        }
    }
}
