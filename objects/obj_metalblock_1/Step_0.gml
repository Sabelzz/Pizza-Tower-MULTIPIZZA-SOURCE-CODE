with (instance_nearest(x, y, obj_player))
{
    if ((place_meeting((x + hsp), y, other.id) || place_meeting((x + xscale), y, other.id)) && (state == (70 << 0) || state == (149 << 0) || state == (95 << 0) || state == (104 << 0) || state == (13 << 0) || state == (3 << 0) || (state == (31 << 0) && sprite_index != spr_crouchslip && movespeed >= 12) || state == (105 << 0) || state == (101 << 0) || (state == (19 << 0) && momemtum == 1) || (state == (133 << 0) && substate == 0)))
    {
        with (other.id)
        {
            DestroyedBy = other.id
            event_user(0)
        }
    }
    if ((place_meeting((x + hsp), y, other.id) || place_meeting((x - xscale), y, other.id)) && state == (139 << 0) && movespeed >= 12)
    {
        with (other.id)
        {
            DestroyedBy = other.id
            event_user(0)
        }
    }
    if ((place_meeting((x + hsp), y, other.id) || place_meeting((x - xscale), y, other.id)) && (state == (144 << 0) || state == (145 << 0)) && abs(movespeed) >= 12)
    {
        with (other.id)
        {
            DestroyedBy = other.id
            event_user(0)
        }
    }
    if ((place_meeting(x, (y + vsp), other.id) || place_meeting(x, (y + 1), other.id)) && state == (12 << 0) && verticalMovespeed >= 12)
    {
        with (other.id)
        {
            DestroyedBy = other.id
            event_user(0)
        }
    }
    if (((place_meeting(x, (y + vsp), other.id) && vsp < 0) || place_meeting(x, (y - 1), other.id)) && state == (63 << 0))
    {
        with (other.id)
        {
            DestroyedBy = other.id
            event_user(0)
        }
    }
    if (((place_meeting(x, (y + vsp), other.id) && vsp < 0) || place_meeting(x, (y - 1), other.id)) && state == (11 << 0) && mach2 >= 100)
    {
        with (other.id)
        {
            DestroyedBy = other.id
            event_user(0)
        }
    }
    if (((place_meeting(x, (y + vsp), other.id) && vsp >= 0) || place_meeting(x, (y + 1), other.id)) && state == (75 << 0) && freefallsmash > 10)
    {
        with (other.id)
        {
            DestroyedBy = other.id
            event_user(0)
        }
    }
}
with (instance_nearest(x, y, obj_donutShitted))
{
    if (bigShot && (place_meeting((x + hsp), (y + vsp), other.id) || place_meeting((x + sign(hsp)), (y + sign(vsp)), other.id)))
    {
        with (other.id)
        {
            DestroyedBy = other.id
            event_user(0)
        }
        instance_destroy()
    }
}
with (instance_nearest(x, y, obj_donutSlammable))
{
    if (place_meeting(x, (y + vsp), other.id) || place_meeting(x, (y + sign(vsp)), other.id))
    {
        with (other.id)
        {
            DestroyedBy = other.id
            event_user(0)
        }
        instance_destroy()
    }
}
with (instance_nearest(x, y, obj_minedummycart))
{
    if (place_meeting((x + sign(hsp)), y, other.id) && place_meeting((x + hsp), y, other.id))
    {
        with (other.id)
        {
            DestroyedBy = other.id
            event_user(0)
        }
    }
}
