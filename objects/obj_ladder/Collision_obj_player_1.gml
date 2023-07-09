with (obj_player)
{
    if (key_up && (!(place_meeting_collision((other.x + (other.sprite_width / 2)), round(y), (12 << 0)))) && (state == (1 << 0) || state == (89 << 0) || state == (69 << 0) || state == (70 << 0) || state == (68 << 0) || state == (25 << 0) || state == (60 << 0) || state == (27 << 0) || state == (106 << 0)) && state != (73 << 0) && state != (71 << 0) && state != (74 << 0) && state != (75 << 0))
    {
        hsp = 0
        vsp = 0
        mach2 = 0
        state = (59 << 0)
        x = (other.x + (other.sprite_width / 2))
        y = round(y)
        if ((y % 2) == 1)
            y -= 1
    }
}
