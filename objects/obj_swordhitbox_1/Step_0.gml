image_xscale = obj_player.xscale
x = obj_player.x
y = obj_player.y
if ((!global.freezeframe) && obj_player.state != (20 << 0) && obj_player.state != (0 << 0) && obj_player.state != (87 << 0))
    instance_destroy()
