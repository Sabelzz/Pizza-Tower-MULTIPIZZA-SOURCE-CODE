if (obj_player.state == (19 << 0) || obj_player.state == (20 << 0))
{
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_destroy()
}
else
{
    obj_player.xscale = image_xscale
    obj_player.hsp = hsp
    obj_player.vsp = vsp
    obj_player.x = x
    obj_player.y = y
    obj_player.state = (7 << 0)
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_create(x, y, obj_slimedebris)
    instance_destroy()
}
