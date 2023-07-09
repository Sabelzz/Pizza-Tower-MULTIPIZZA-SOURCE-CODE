if (!instance_exists(candyID))
{
    candyID = instance_create(x, y, obj_candysona_giver)
    global.pizzameter += 5
    scr_queue_tvanim(obj_tv.happytvspr, 50)
    create_small_number(x, y, "150")
    scr_ghostcollectible(1)
    global.combofreeze = 30
    global.combotime += 15
    alarm[0] = 5
    state = (60 << 0)
    flash = 1
    alarm[1] = (0.15 * room_speed)
    sprite_index = deadspr
    instance_create(x, y, obj_bangeffect)
    scr_sound(74)
    vsp = random_range(-5, -10)
    ds_list_add(global.saveroom, id)
    hsp = (sign((x - obj_player.x)) * random_range(10, 15))
    if (x != obj_player.x)
        image_xscale = (-(sign((x - obj_player.x))))
}
