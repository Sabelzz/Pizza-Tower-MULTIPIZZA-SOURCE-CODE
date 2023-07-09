if (delay <= 0)
{
    with (obj_player)
    {
        if (state != (48 << 0) && state != (49 << 0))
        {
            state = (48 << 0)
            movespeed = other.sethsp
            verticalMovespeed = other.setvsp
            ufotimer = 750
        }
    }
}
