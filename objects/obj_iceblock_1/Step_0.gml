if (!global.freezeframe)
    invtime = approach(invtime, 0, 1)
if (obj_player.baddiegrabbedID != id && state == (8 << 0))
    state = (0 << 0)
if (type == "Heavy" && (!grounded))
    vsp += 0.2
if (y > (room_height + 200))
{
    state = (0 << 0)
    x = xstart
    y = ystart
    hsp = 0
    vsp = 0
}
switch state
{
    case (0 << 0):
        thrown = 0
        grav = 0.5
        if grounded
            hsp = approach(hsp, 0, 0.3)
        scr_collision()
        break
    case (6 << 0):
        if (type == "Fragile" && scr_solid((x + hsp), (y + vsp)))
            instance_destroy()
        grav = 0.5
        if (grounded && vsp > 0)
            state = (0 << 0)
        scr_collision()
        break
    case (10 << 0):
        scr_enemy_frozen()
        break
}

if (flash == 1 && alarm[1] <= 0)
    alarm[1] = (0.15 * room_speed)
if ((type == "Normal" || type == "Heavy") && ((state == (0 << 0) && type == "Heavy") || state == (6 << 0)))
{
    instance_destroy(instance_place((x + hsp), (y + vsp), obj_baddie))
    instance_destroy(instance_place((x + sign(hsp)), (y + sign(vsp)), obj_baddie))
    instance_destroy(instance_place((x + hsp), (y + vsp), obj_destructibles))
    instance_destroy(instance_place((x + sign(hsp)), (y + sign(vsp)), obj_destructibles))
    instance_destroy(instance_place((x + hsp), (y + vsp), obj_icewall))
    instance_destroy(instance_place((x + sign(hsp)), (y + sign(vsp)), obj_icewall))
}
if (!(place_meeting(x, y, obj_dashpad)))
    touching = 0
if ((!global.freezeframe) && place_meeting(x, y, obj_dashpad) && state != (8 << 0) && touching == 0)
{
    state = (6 << 0)
    vsp = -7
    var _pad = instance_place(x, y, obj_dashpad)
    x = _pad.x
    y = _pad.y
    xscale = _pad.image_xscale
    movespeed = 15
    other.hsp = (other.movespeed * other.xscale)
    other.flash = 1
    touching = 1
}
if ((!global.freezeframe) && invtime <= 0 && place_meeting(x, y, obj_player) && state != (8 << 0))
{
    with (obj_player)
    {
        if (state == (70 << 0) || state == (69 << 0) || state == (106 << 0) || state == (101 << 0) || state == (133 << 0))
        {
            instance_create(other.x, other.y, obj_slapstar)
            instance_create(other.x, other.y, obj_baddiegibs)
            instance_create(other.x, other.y, obj_bangeffect)
            with (instance_create(other.x, other.y, obj_bangeffect))
                sprite_index = spr_enemypuncheffect
            machpunchAnim = 1
            other.state = (6 << 0)
            other.vsp = -11
            if (state == (69 << 0))
                other.vsp = -7
            other.movespeed = (movespeed + 2)
            if (state == (133 << 0))
            {
                other.vsp -= 7
                other.movespeed += 2
            }
            other.xscale = xscale
            other.hsp = (other.movespeed * other.xscale)
            other.flash = 1
            other.invtime = 10
            scr_sound(57)
            scr_sleep()
        }
        if (state == (63 << 0) || state == (89 << 0))
        {
            var pctg = (other.x - x)
            instance_create(other.x, other.y, obj_slapstar)
            instance_create(other.x, other.y, obj_baddiegibs)
            instance_create(other.x, other.y, obj_bangeffect)
            with (instance_create(other.x, other.y, obj_bangeffect))
                sprite_index = spr_enemypuncheffect
            machpunchAnim = 1
            other.state = (6 << 0)
            other.vsp = vsp
            if (state == (63 << 0))
                other.vsp -= 8
            other.movespeed = (7 * (abs(pctg) / 32))
            if (sign(pctg) != 0)
                other.xscale = sign(pctg)
            else
                other.movespeed = 0
            other.hsp = (other.movespeed * other.xscale)
            other.flash = 1
            other.invtime = 20
            scr_sound(57)
            scr_sleep()
        }
        if (state == (17 << 0))
        {
            scr_sound(107)
            baddiegrabbedID = other.id
            with (other)
            {
                state = (8 << 0)
                instance_create((x + (other.xscale * 40)), y, obj_punchdust)
            }
            if (!key_up)
            {
                state = (40 << 0)
                sprite_index = spr_player_haulingstart
                image_index = 0
            }
            else
            {
                state = (36 << 0)
                sprite_index = spr_player_piledriverstart
                if grounded
                    vsp = -12
                else
                    vsp = -6
                grounded = 0
                image_index = 0
                image_speed = 0.35
            }
        }
    }
}
