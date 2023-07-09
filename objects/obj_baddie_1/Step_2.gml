var _state = (global.freezeframe ? frozenstate : state)
stuntouch--
stuntouch = max(0, stuntouch)
if (squashedx == 1)
{
    squashvalx = approach(squashvalx, 0.4, 0.15)
    if (squashvalx >= 0.4)
        squashedx = 0
}
else if (squashedx == 0)
    squashvalx = approach(squashvalx, 0, 0.05)
if (squashedy == 1)
{
    squashvaly = approach(squashvaly, 0.4, 0.15)
    if (squashvaly >= 0.4)
        squashedy = 0
}
else if (squashedy == 0)
    squashvaly = approach(squashvaly, 0, 0.05)
if (state != (8 << 0) && state != (12 << 0) && state != (13 << 0))
    scr_collide()
if (state == (8 << 0))
{
    vsp = 0
    hsp = 0
    grounded = 0
}
if (secretjumped && grounded && invincible)
{
    invincible = 0
    secretjumped = 0
}
