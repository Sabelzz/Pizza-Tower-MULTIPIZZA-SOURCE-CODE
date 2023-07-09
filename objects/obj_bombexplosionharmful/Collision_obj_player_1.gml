if (image_index > 9)
{
}
if (other.state != (22 << 0))
{
    scr_hurtplayer(other)
    other.state = (22 << 0)
    other.bombpeptimer = 0
    other.sprite_index = spr_bombpep_end
    other.image_index = 0
}
