if (obj_player.state == (91 << 0))
{
    obj_player.state = (1 << 0)
    obj_tv.staticdraw = 1
    obj_tv.statictimer = 20
    if (!instance_exists(obj_tasershockwave))
        instance_create(x, y, obj_tasershockwave)
}
if (obj_player.state == (92 << 0))
{
    obj_player.state = (1 << 0)
    obj_tv.staticdraw = 1
    obj_tv.statictimer = 20
}
