with (other)
{
    if (state == (17 << 0) && state != (22 << 0))
    {
        state = (134 << 0)
        bombID = other.id
        sprite_index = spr_grab
        image_index = 0
        other.state = (40 << 0)
        other.playerID = id
    }
}
