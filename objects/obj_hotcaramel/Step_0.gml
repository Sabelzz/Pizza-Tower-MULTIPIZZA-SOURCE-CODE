if place_meeting(x, (y - 1), obj_player)
{
    with (obj_player)
    {
        if (state != (128 << 0) && (!global.freezeframe))
        {
            if (state == (88 << 0) || state == (97 << 0))
                instance_create(x, y, obj_poofeffect)
            sprite_index = spr_player_fireass
            state = (108 << 0)
            image_index = 0
            vsp = -20
            audio_stop_sound(sound_fireass)
            scr_sound(201)
        }
    }
}
