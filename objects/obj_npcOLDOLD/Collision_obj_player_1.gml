if (obj_player.state != (94 << 0) && (!instance_exists(obj_uparrow)))
    instance_create(x, (y - 32), obj_uparrow)
if obj_player.key_up2
{
    obj_player.state = (94 << 0)
    drawing = 1
    obj_player.x = (x + (64 * image_xscale))
    if (image_xscale == 1)
        obj_player.xscale = -1
    else if (image_xscale == -1)
        obj_player.xscale = 1
}
