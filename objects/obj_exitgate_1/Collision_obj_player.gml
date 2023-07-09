if (global.panic == 1 && room != sucrose_1)
{
    with (obj_player)
    {
        if (grounded && ((!other.drop) || other.drop_state == 1) && key_up && (state == (1 << 0) || state == (68 << 0) || state == (69 << 0) || state == (70 << 0) || state == (64 << 0)))
        {
            targetDoor = "none"
            audio_stop_all()
            scr_savelevelDetails()
            obj_tv.tvsprite = 1920
            if (state != (77 << 0))
            {
                sprite_index = spr_lookdoor
                state = (77 << 0)
                image_index = 0
            }
            if (!instance_exists(obj_endlevelfade))
            {
                with (instance_create(x, y, obj_endlevelfade))
                {
                    var _cam_x = camera_get_view_x(view_camera[0])
                    var _cam_y = camera_get_view_y(view_camera[0])
                    PlayerX = (other.x - _cam_x)
                    PlayerY = (other.y - _cam_y)
                }
            }
            global.panic = 0
            global.lapmusic = 0
            if (global.rank == "p")
                scr_sound(6)
            if (global.rank == "s")
                scr_sound(44)
            if (global.rank == "a")
                scr_sound(182)
            if (global.rank == "b")
                scr_sound(3)
            if (global.rank == "c")
                scr_sound(216)
            if (global.rank == "d")
                scr_sound(1)
        }
    }
}
