with (other.id)
{
    if (instance_exists(other.baddieID) && state != (96 << 0) && state != (88 << 0) && state != (97 << 0) && state != (98 << 0))
    {
        state = (96 << 0)
        xscale = other.baddieID.image_xscale
        movespeed = 10
        vsp = 0
        sprite_index = spr_tumble
    }
}
