if (state == (0 << 0) && other.state != (62 << 0) && other.hsp == 0 && other.grounded && other.key_up2)
{
    state = (1 << 0)
    playerID = other.id
    other.state = (110 << 0)
    other.key_up2 = 0
    other.movespeed = 0
    other.hsp = 0
    other.sprite_index = other.spr_idle
    other.image_speed = 0.35
}
