if (state == (1 << 0))
{
    if (sprite_index != spr_spraydie && scr_solid((x + image_xscale), y, 1))
    {
        sprite_index = spr_spraydie
        image_index = 0
    }
}
