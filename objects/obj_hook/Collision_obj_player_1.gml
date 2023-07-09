if (state == (0 << 0))
{
    if (other.state != (126 << 0) && other.state != (0 << 0) && other.state != (128 << 0) && other.state != (45 << 0))
    {
        with (other)
        {
            other.x = other.xstart
            other.y = other.ystart
            scr_taunt_storeVariables()
            state = (126 << 0)
            other.playerID = id
        }
        state = (2 << 0)
    }
}
