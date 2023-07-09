if visible
{
    with (obj_player)
    {
        if (state != (133 << 0))
        {
            x = other.x
            y = other.y
            substate = 0
            state = (133 << 0)
            xscale = other.image_xscale
            image_index = 0
            sprite_index = spr_player_bottlerocketstart
        }
    }
}
