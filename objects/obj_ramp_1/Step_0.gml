if place_meeting(x, (y - 16), obj_player)
{
    with (obj_player)
    {
        if (place_meeting(x, (y + 16), other.id) && (!(scr_solid((x + xscale), y, 1))) && bbox_bottom <= other.bbox_top && xscale == sign(other.image_xscale))
        {
            if (state == (69 << 0) || state == (70 << 0) || state == (127 << 0))
            {
                state = (127 << 0)
                vsp = -12
                movespeed = 14
            }
            else if (state == (83 << 0))
            {
                input_buffer = 60
                vsp = -22
                movespeed = (22 * obj_player.xscale)
            }
        }
    }
}
