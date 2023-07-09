if (sprite_index == spr_grabbiehand_fall)
{
    with (obj_player)
    {
        if (state == (16 << 0))
        {
            scr_sound(92)
            with (instance_create(x, y, obj_boxxeddebris))
                image_index = 0
            with (instance_create(x, y, obj_boxxeddebris))
                image_index = 1
            with (instance_create(x, y, obj_boxxeddebris))
                image_index = 2
            with (instance_create(x, y, obj_boxxeddebris))
                image_index = 3
            with (instance_create(x, y, obj_boxxeddebris))
                image_index = 4
        }
        if (state == (14 << 0) || state == (15 << 0))
        {
            scr_sound(92)
            instance_create(x, y, obj_slimedebris)
            instance_create(x, y, obj_slimedebris)
            instance_create(x, y, obj_slimedebris)
            instance_create(x, y, obj_slimedebris)
            instance_create(x, y, obj_slimedebris)
            instance_create(x, y, obj_slimedebris)
            instance_create(x, y, obj_slimedebris)
            instance_create(x, y, obj_slimedebris)
        }
    }
    grav = 0
    vsp = 0
    grabbing = 1
    sprite_index = spr_grabbiehand_catch
    other.image_index = 0
    obj_player.sprite_index = spr_player_catched
    other.state = (77 << 0)
    other.x = x
    other.y = y
    other.vsp = 0
    other.hsp = 0
    scr_sound(82)
}
if (sprite_index == spr_grabbiehand_catch)
{
    other.vsp = 0
    other.hsp = 0
    other.state = (77 << 0)
    obj_player.sprite_index = spr_player_catched
    other.x = x
    other.y = y
}
if (obj_player.state == (23 << 0))
{
    if (thumbingup == 0 && x <= (xstarte + 5) && x >= (xstarte - 5) && y <= (ystarte + 5) && y >= (ystarte - 5) && grabbing == 0)
    {
        scr_sound(82)
        delay = 5
        image_xscale = (-obj_player.xscale)
        thumbingup = 1
        instance_create(x, y, obj_bangeffect)
        sprite_index = spr_grabbiehand_hifive
        image_index = 0
    }
}
