if (other.state != (126 << 0) && other.state != (0 << 0) && other.state != (128 << 0))
{
    with (other)
    {
        switch state
        {
            case (17 << 0):
                playerPrevState = (69 << 0)
                playerPrevSprite = 44
                break
            case (73 << 0):
                playerPrevState = (69 << 0)
                playerPrevSprite = 44
                break
            case (71 << 0):
                if (sprite_index == spr_machslideboost3)
                {
                    playerPrevState = (70 << 0)
                    playerPrevSprite = spr_mach3player
                }
                else if (sprite_index == spr_player_machslideboost)
                {
                    playerPrevState = (69 << 0)
                    playerPrevSprite = 44
                }
                else
                {
                    playerPrevState = (71 << 0)
                    playerPrevSprite = 524
                }
                break
            case (88 << 0):
            case (97 << 0):
            case (98 << 0):
                playerPrevState = (69 << 0)
                playerPrevSprite = 12
                break
            case (96 << 0):
                playerPrevState = (69 << 0)
                playerPrevSprite = 12
                break
            default:
                playerPrevSprite = sprite_index
                playerPrevState = state
                break
        }

        y = (other.y - 14)
        x = other.x
        state = (126 << 0)
        if (other.hookSubState == (2 << 0))
            xscale = 1
        else if (other.hookSubState == (1 << 0))
            xscale = -1
        substate = other.hookSubState
        verticalMovespeed = vsp
        hspCarry = 0
        slideHsp = 0
        vspCarry = 0
    }
    audio_emitter_free(hookSoundEmitter)
}
