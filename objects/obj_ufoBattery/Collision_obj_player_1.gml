with (other)
{
    if ((!other.wasCollected) && (state == (48 << 0) || state == (49 << 0)))
    {
        other.wasCollected = 1
        other.alarm[0] = 200
        sprite_index = spr_player_ufoFloatSpeedUp
        image_index = 0
        state = (49 << 0)
        ufotimer = min((ufotimer + 150), 750)
    }
}
