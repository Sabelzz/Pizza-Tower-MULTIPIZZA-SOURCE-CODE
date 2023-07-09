with (other)
{
    if ((!cutscene) && (!global.freezeframe) && state != (45 << 0) && state != (74 << 0) && state != (53 << 0) && state != (75 << 0))
    {
        jumpstop = 1
        vsp = -21
        if (state == (1 << 0) || state == (67 << 0) || state == (65 << 0) || state == (17 << 0) || state == (71 << 0))
            state = (60 << 0)
        if (state == (148 << 0) || state == (151 << 0) || state == (150 << 0))
        {
            image_index = 0
            sprite_index = spr_player_skatejumpstart
            state = (150 << 0)
        }
        if (state == (11 << 0) || state == (12 << 0) || state == (139 << 0) || state == (31 << 0))
            state = (69 << 0)
        if (state == (60 << 0) || state == (1 << 0))
        {
            sprite_index = spr_player_outofcontrolfall
            image_index = 0
        }
        with (other)
        {
            sprite_index = spr_marshmallowSpring_active
            image_index = 0
        }
    }
}
