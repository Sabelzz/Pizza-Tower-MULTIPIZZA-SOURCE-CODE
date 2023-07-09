if (global.panic == 1 && room != sucrose_1)
    sprite_index = spr_enterexitgate
if (place_meeting(x, y, obj_player) && obj_player.state != (62 << 0) && sprite_index == spr_enterexitgate && (global.panic == 0 || room == sucrose_1) && obj_player.sprite_index != obj_player.spr_lookdoor && sprite_index != spr_exitgateclosed)
{
    ds_list_add(global.saveroom, id)
    sprite_index = spr_exitgateclosing
    scr_sound(96)
    with (obj_camera)
    {
        shake_mag = 3
        shake_mag_acc = (3 / room_speed)
    }
    global.playmiliseconds = 0
    global.playseconds = 0
    global.playminutes = 0
    global.playhour = 0
    obj_player.state = (45 << 0)
    obj_player.image_index = 0
    obj_player.sprite_index = obj_player.spr_Timesup
}
if (sprite_index == spr_exitgateclosing && floor(image_index) == (image_number - 1))
    sprite_index = spr_exitgateclosed
if (drop && drop_state == 0)
{
    if (!(scr_solid(x, (y + sign(vsp)))))
    {
        y += vsp
        vsp += grav
    }
    if (y >= drop_y)
    {
        y = drop_y
        drop_state = 1
        ds_list_add(global.doorsave, id)
        scr_sound(96)
        camera_shake(15, 30)
    }
}
if (global.starrmode == 1)
    image_alpha -= 0.1
if (image_alpha == 0)
{
    instance_destroy()
    ds_list_add(global.saveroom, id)
}
