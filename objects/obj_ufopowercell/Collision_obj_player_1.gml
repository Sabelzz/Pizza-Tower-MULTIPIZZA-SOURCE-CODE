if (canbecollected == 1)
{
    if (obj_player.state == (124 << 0))
    {
        obj_player.ufotimer += 4
        obj_player.ufomaxspeed += 1
        canbecollected = 0
        image_alpha = 0.5
    }
}
