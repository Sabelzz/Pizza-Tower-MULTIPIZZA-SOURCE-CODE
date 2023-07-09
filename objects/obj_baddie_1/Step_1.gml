switch state
{
    case (0 << 0):
        scr_enemy_idle()
        break
    case (2 << 0):
        scr_enemy_turn()
        break
    case (3 << 0):
        scr_enemy_walk()
        break
    case (4 << 0):
        scr_enemy_land()
        break
    case (5 << 0):
        scr_enemy_hit()
        break
    case (1 << 0):
        scr_enemy_charge()
        break
    case (6 << 0):
        scr_enemy_stun()
        break
    case (10 << 0):
        scr_enemy_frozen()
        break
    case (11 << 0):
        scr_enemy_shake()
        break
    case (22 << 0):
        scr_enemy_float()
        break
    case (23 << 0):
        scr_enemy_theif()
        break
    case (12 << 0):
        scr_enemy_panicWait()
        break
    case (13 << 0):
        scr_enemy_secretWait()
        break
    case (7 << 0):
        scr_enemy_throw()
        break
    case (8 << 0):
        scr_enemy_grabbed()
        break
    case (9 << 0):
        scr_enemy_scared()
        break
    case (14 << 0):
        scr_enemy_inhaled()
        break
    case (15 << 0):
        scr_enemy_cherrywait()
        break
    case (16 << 0):
        scr_enemy_charcherry()
        break
    case (19 << 0):
        scr_enemy_slugidle()
        break
    case (20 << 0):
        scr_enemy_slugjump()
        break
    case (21 << 0):
        scr_enemy_slugparry()
        break
    case (18 << 0):
        scr_enemy_kick()
        break
    case (24 << 0):
        scr_enemy_eyescreamwait()
        break
    case (25 << 0):
        scr_enemy_eyescream()
        break
    case (26 << 0):
        scr_enemy_rage()
        break
    case (17 << 0):
        scr_applejim_bash()
        break
}

if (y > (room_height + 64))
    instance_destroy()
if (state != (9 << 0))
    ScareBuffer = 0
if (tauntBuffer == 1)
{
    if (!instance_exists(tauntBufferEffect))
    {
        with (instance_create(x, y, obj_baddieangrycloud))
        {
            baddieID = other.id
            other.tauntBufferEffect = id
        }
    }
    if (obj_player.state != (45 << 0) && obj_player.state != (93 << 0) && object_index != obj_popcornbag)
    {
        tauntBuffer = 0
        bombreset = 0
        ragereset = 0
        stunned = 0
        jumptimer = 0
        ScareBuffer = 0
    }
    if (obj_player.state != (45 << 0) && obj_player.state != (93 << 0) && object_index == obj_popcornbag)
        tauntBuffer = 0
}
if (place_meeting_solid(x, y) && state == (6 << 0) && thrown)
    instance_destroy()
