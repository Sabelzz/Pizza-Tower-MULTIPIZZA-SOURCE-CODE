if (inv_frame == 0 && obj_player.state != (19 << 0) && obj_player.state != (7 << 0) && obj_player.state != (9 << 0) && obj_player.state != (6 << 0) && obj_player.state != (20 << 0) && obj_player.state != (13 << 0) && obj_player.state != (73 << 0))
{
    instance_destroy()
    global.key_inv = 1
    obj_player.key_particles = 1
    obj_player.alarm[7] = 30
}
if (global.keyget == 0 && obj_player.state != (19 << 0) && obj_player.state != (20 << 0) && obj_player.state != (9 << 0) && obj_player.state != (6 << 0) && obj_player.state != (13 << 0))
{
    scr_sound(123)
    obj_player.state = (56 << 0)
    obj_player.image_index = 0
    global.keyget = 1
    scr_queue_tvanim(obj_tv.happytvspr, 200)
}
