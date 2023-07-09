if place_meeting(x, y, obj_player)
{
    with (obj_player)
    {
        if place_meeting(x, y, other)
        {
            if (state != (128 << 0) && (!global.freezeframe))
            {
                if (vsp >= 0)
                {
                    if (state == (88 << 0) || state == (97 << 0))
                        instance_create(x, y, obj_poofeffect)
                    scr_playerrespawn(0)
                }
            }
        }
    }
}
