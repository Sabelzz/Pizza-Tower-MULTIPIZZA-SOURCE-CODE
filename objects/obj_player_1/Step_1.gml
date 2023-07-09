if key_jump
    playedjumpsound = 0
scr_getinput()
scr_characterspr()
if (state == (18 << 0) || sprite_index == spr_knightpep_start || sprite_index == spr_knightpep_thunder || state == (56 << 0) || state == (77 << 0) || state == (61 << 0) || state == (62 << 0) || state == (51 << 0))
    cutscene = 1
else
    cutscene = 0
is_inSecretPortal = 0
if (grounded && vsp >= 0 && (!((state == (11 << 0) || state == (96 << 0) || state == (40 << 0) || state == (75 << 0) || state == (33 << 0) || state == (87 << 0)))))
{
    var targetangle = 360
    var RotationStep = (((abs(hsp) / 16) - 2) * -1)
    if (abs(hsp) >= 8 || state == (101 << 0))
    {
        targetangle = scr_slopeangle()
        RotationStep = ((((abs(hsp) / 16) + (abs(hsp) / 32)) - 2) * -1)
    }
    slope_angle = darctan2((dsin(targetangle) + (dsin(slope_angle) * RotationStep)), (dcos(targetangle) + (dcos(slope_angle) * RotationStep)))
}
else
{
    var _rotateSpeed = 16
    if (slope_angle <= 0)
        slope_angle += 360
    if (slope_angle < 180)
        slope_angle = lerp(slope_angle, 0, 0.25)
    else
        slope_angle = lerp(slope_angle, 360, 0.25)
    slope_angle = round(slope_angle)
}
draw_angle = slope_angle
scr_playerstate()
