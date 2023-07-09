if (active && other.state != (153 << 0) && other.state != (0 << 0) && other.state != (73 << 0) && other.state != (72 << 0))
{
    with (other)
    {
        if (state == (11 << 0))
            state = (69 << 0)
        scr_taunt_storeVariables()
        state = (153 << 0)
        webID = other.id
    }
}
