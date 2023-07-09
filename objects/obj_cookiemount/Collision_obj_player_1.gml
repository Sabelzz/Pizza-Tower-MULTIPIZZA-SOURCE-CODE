if (obj_player.state == (17 << 0))
{
    if (obj_player.xscale == -1)
        obj_player.movespeed = (-obj_player.movespeed)
    obj_player.ridingmarsh = 1
    obj_player.state = (83 << 0)
    instance_destroy()
}
