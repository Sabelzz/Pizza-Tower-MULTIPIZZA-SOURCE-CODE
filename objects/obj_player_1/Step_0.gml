audio_emitter_position(playerSound, x, y, 0)
audio_emitter_gain(playerSound, global.soundVolume)
var a = instance_place(x, y, obj_secret_tiles)
secret_array = (a != noone ? a.tiles : ["-4"])
if (place_meeting(x, y, obj_exitgate) && state == (62 << 0))
{
    var _check = 0
    with (instance_place(x, y, obj_exitgate))
        _check = ds_list_find_index(global.saveroom, id) != -1
    if (!_check)
    {
        global.playmiliseconds = 0
        global.playseconds = 0
        global.playminutes = 0
        global.playhour = 0
    }
}
if (state != (62 << 0))
    image_blend = make_color_hsv(0, 0, 255)
if (state != (69 << 0) && state != (70 << 0) && state != (12 << 0))
    upsideDownJump = 0
if (!instance_exists(obj_heataftereffect))
    instance_create(x, y, obj_heataftereffect)
if (firetrailbuffer > 0)
    firetrailbuffer -= ((movespeed / 24) * 26)
if (firetrailbuffer <= 0)
{
    if (movespeed >= 12 && (state == (69 << 0) || state == (70 << 0) || (state == (31 << 0) && sprite_index != spr_crouchslip && movespeed >= 12)))
        instance_create(x, y, obj_flamecloud)
    firetrailbuffer = 100
}
if (state != (70 << 0) && state != (11 << 0) && state != (139 << 0) && state != (12 << 0))
    mach4mode = 0
if (room == realtitlescreen || room == rm_introVideo || room == scootercutsceneidk)
    state = (2 << 0)
if grounded
    groundedcot = 1
if (y > (room_height + 400))
    scr_playerrespawn()
if (state != (74 << 0) && state != (53 << 0) && state != (75 << 0) && state != (36 << 0))
    freefallsmash = 0
if ((!global.freezeframe) && state != (0 << 0))
{
    if ((!instance_exists(baddiegrabbedID)) && (state == (40 << 0) || state == (36 << 0) || state == (5 << 0)))
        state = (1 << 0)
    if (!((state == (40 << 0) || state == (5 << 0) || state == (36 << 0) || state == (87 << 0))))
        baddiegrabbedID = -4
}
if (character == "P")
{
    if (anger == 0)
        angry = 0
    if (anger > 0)
    {
        angry = 1
        anger -= 1
    }
}
if ((angry == 1 || global.stylethreshold > 3) && sprite_index == spr_idle)
    sprite_index = spr_angryidle
scr_playersounds()
if (sprite_index == spr_player_winding && state != (1 << 0))
    windingAnim = 0
else
    audio_stop_sound(sound_superjumpcharge2)
if (suplexmove == 1 && grounded)
{
    suplexmove = 0
    flash = 1
}
if (obj_player.state != (17 << 0))
    grav = 0.5
if (sprite_index == spr_player_idlevomit && image_index > 28 && image_index < 43)
    instance_create((x + random_range(-5, 5)), (y + 46), obj_vomit)
if (sprite_index == spr_player_idlevomitblood && image_index > 28 && image_index < 43)
{
    with (instance_create((x + random_range(-5, 5)), (y + 46), obj_vomit))
        sprite_index = spr_vomit2
}
if (angry == 1 && (!instance_exists(obj_angrycloud)) && obj_player.state == (1 << 0))
    instance_create(x, y, obj_angrycloud)
if (!global.freezeframe)
{
    global.combotime = clamp(global.combotime, 0, 60)
    if (global.combofreeze <= 0)
        global.combotime = approach(global.combotime, 0, 0.15)
}
global.combofreeze--
global.combofreeze = clamp(global.combofreeze, 0, 75)
if (global.combotime <= 0 && global.combo != 0)
{
    if (global.combo > 5)
        scr_queue_tvanim(obj_tv.happytvspr, 200)
    global.combo = 0
    playComboVariable = -4
}
if (input_buffer_jump < 8)
    input_buffer_jump++
if (input_buffer_secondjump < 8)
    input_buffer_secondjump++
if (input_buffer_highjump < 8)
    input_buffer_highjump++
if (key_particles == 1)
    instance_create(random_range((x + 25), (x - 25)), random_range((y + 35), (y - 25)), obj_keyeffect)
if (inv_frames == 0 && hurted == 0)
    image_alpha = 1
if (state == (69 << 0) || state == (106 << 0) || state == (133 << 0) || state == (5 << 0) || state == (38 << 0) || state == (19 << 0) || state == (9 << 0) || state == (6 << 0) || state == (13 << 0) || state == (20 << 0) || state == (22 << 0) || state == (29 << 0) || state == (34 << 0) || state == (29 << 0) || state == (31 << 0) || state == (70 << 0) || state == (74 << 0) || state == (63 << 0))
    attacking = 1
else
    attacking = 0
if (state == (35 << 0) || state == (41 << 0) || state == (42 << 0) || state == (44 << 0) || state == (43 << 0))
    grabbing = 1
else
    grabbing = 0
var _machslideCheck = (sprite_index == spr_machslideboost3 || sprite_index == spr_machslideboost3FallStart || sprite_index == spr_machslideboost3Fall)
if (state == (70 << 0) || (state == (71 << 0) && _machslideCheck) || state == (58 << 0) || state == (149 << 0) || state == (148 << 0) || (state == (150 << 0) && vsp > 0) || (state == (96 << 0) && sprite_index != spr_tumblestart && sprite_index != spr_tumbleend) || (state == (11 << 0) && (verticalMovespeed > 8 || mach2 >= 100)) || (state == (139 << 0) && (movespeed > 8 || mach2 >= 100)) || (state == (12 << 0) && (verticalMovespeed > 8 || mach2 >= 100)) || state == (142 << 0) || state == (106 << 0) || (state == (98 << 0) && movespeed > 8) || state == (133 << 0) || state == (103 << 0) || state == (101 << 0) || state == (108 << 0) || state == (95 << 0) || state == (3 << 0) || state == (38 << 0) || state == 28 || state == (74 << 0) || state == (63 << 0) || (state == (31 << 0) && movespeed >= 12) || state == (34 << 0) || state == (5 << 0) || (state == (36 << 0) && sprite_index == spr_piledriver) || (state == (36 << 0) && sprite_index == spr_player_piledriverstart) || state == (19 << 0) || state == (20 << 0) || state == (13 << 0) || state == (9 << 0) || state == (6 << 0) || state == (7 << 0) || state == (89 << 0) || state == (105 << 0) || state == (49 << 0))
    instakillmove = 1
else
    instakillmove = 0
if (flash == 1 && alarm[0] <= 0)
    alarm[0] = (0.15 * room_speed)
if (state != (70 << 0) && state != (71 << 0))
    autodash = 0
if ((state != (60 << 0) && state != (66 << 0) && state != (4 << 0)) || vsp < 0)
    fallinganimation = 0
if (state != (75 << 0) && state != (1 << 0) && state != (71 << 0))
    facehurt = 0
if (state != (1 << 0) && state != (71 << 0))
    machslideAnim = 0
if (state != (1 << 0))
{
    idle = 0
    dashdust = 0
}
if (state != (68 << 0) && state != (60 << 0) && state != (3 << 0) && state != (17 << 0) && state != (1 << 0) && state != (69 << 0) && state != (70 << 0) && state != (53 << 0) && state != (19 << 0) && state != (33 << 0) && state != (13 << 0) && state != (88 << 0) && state != (98 << 0))
    momemtum = 0
if (state != (63 << 0) && state != (64 << 0))
    a = 0
if (state != (29 << 0))
    facestompAnim = 0
if (state != (74 << 0) && state != (29 << 0) && state != (36 << 0) && state != (75 << 0))
    superslam = 0
if (state != (69 << 0))
    machpunchAnim = 0
if (state != (60 << 0))
    ladderbuffer = 0
if (state != (60 << 0))
    stompAnim = 0
if (toomuchalarm1 > 0)
    toomuchalarm1 -= 1
if (state == (70 << 0) || state == (3 << 0) || state == (69 << 0) || state == (5 << 0) || (state == (71 << 0) && mach2 >= 100) || (state == (31 << 0) && sprite_index != spr_crouchslip && movespeed >= 12) || state == (17 << 0) || state == (97 << 0) || state == (101 << 0) || (state == (104 << 0) && sprite_index != spr_pizzano_sjumpprepside) || state == (121 << 0) || (state == (28 << 0) && mach2 >= 100))
{
    mach_aftimg--
    if (mach_aftimg <= 0)
    {
        create_afterimage(choose((1 << 0), (2 << 0)), xscale, 1)
        mach_aftimg = 6
    }
}
else
    mach_aftimg = 0
if (state != (72 << 0) && state != (98 << 0) && state != (65 << 0) && state != (9 << 0) && state != (32 << 0) && state != (96 << 0) && sprite_index != spr_player_crouchshoot && sprite_index != spr_player_skatecrouch && state != (64 << 0) && state != (28 << 0) && state != (31 << 0) && state != (73 << 0) && state != (67 << 0) && state != (66 << 0) && sprite_index != spr_pizzano_crouchslide)
    mask_index = spr_player_mask
else
    mask_index = spr_crouchmask
if (state != (73 << 0))
    hurtsound = 0
if (((place_meeting(x, y, obj_door) && (!(place_meeting(x, y, obj_doorblocked)))) || (place_meeting(x, y, obj_startgate) && state != (61 << 0)) || place_meeting(x, y, obj_janitorDoor) || place_meeting(x, y, obj_keydoorclock) || place_meeting(x, y, obj_keydoor) || (place_meeting(x, y, obj_exitgate) && global.panic == 1 && room != sucrose_1)) && (!instance_exists(obj_uparrow)) && scr_solid(x, (y + 1)) && state == (1 << 0))
    instance_create(x, y, obj_uparrow)
if (((state == (69 << 0) && sprite_index != spr_mach1) || state == (70 << 0)) && (!instance_exists(obj_speedlines)))
{
    instance_create(x, y, obj_speedlines, 
    {
        playerID: id
    }
)
}
if (state == (106 << 0))
{
    blue_aftimg--
    if (blue_aftimg <= 0)
    {
        create_afterimage(choose((4 << 0), (5 << 0)), xscale, 1)
        blue_aftimg = 6
    }
}
else
    blue_aftimg = 0
if (state != (45 << 0))
{
    if (global.combo >= 3 && supertauntbuffer < 500 && supertauntcharged == 0)
        supertauntbuffer++
    if (supertauntbuffer >= 500 && supertauntcharged == 0 && state != (45 << 0))
    {
        scr_sound(70)
        supertauntbuffer = 500
        supertauntcharged = 1
    }
    if (global.combo < 3)
    {
        supertauntbuffer = 0
        supertauntcharged = 0
    }
    if (supertauntcharged == 1 && room != rank_room)
    {
        if (!instance_exists(supertaunteffect))
        {
            supertaunteffect = instance_create(x, y, obj_supertaunteffect, 
            {
                playerID: other.id
            }
)
        }
    }
}
scr_collide_destructibles()
if place_meeting(x, (y + 1), obj_molassesGround)
{
    if (hsp != 0 && (floor(image_index) % 4) == 0 && grounded)
    {
        with (instance_create(x, (y + 43), obj_debris))
        {
            sprite_index = spr_molassesgoop
            image_index = irandom_range(0, 5)
        }
    }
    if (state == (11 << 0) && vsp < 0)
        state = (1 << 0)
    if (state == (141 << 0) && vsp < 0)
        state = (140 << 0)
    if (vsp < 0 && grounded)
    {
        vsp /= 2
        with (instance_create(x, (y + 43), obj_debris))
        {
            sprite_index = spr_molassesgoop
            image_index = irandom_range(0, 5)
        }
    }
}
if (place_meeting(x, (y + 3), obj_icyGround) && grounded)
{
    if (sign(hsp) != sign(prevHsp))
        slideHsp += (prevHsp / 1.5)
    if scr_slope()
        slideHsp += (0.25 * slopeMomentum_acceleration())
}
else if grounded
    slideHsp = approach(slideHsp, 0, 0.35)
if (!grounded)
    slideHsp = approach(slideHsp, 0, 0.6)
slideHsp = approach(slideHsp, 0, 0.15)
slideHsp = (clamp(abs(slideHsp), 0, 3) * sign(slideHsp))
if (state == (139 << 0) || state == (12 << 0) || state == (11 << 0))
    slideHsp = 0
if (state != (92 << 0))
    bushdetection = 0
if (state != (65 << 0))
    crouchjumptimer = 0
if (state != (107 << 0) && state != (0 << 0))
{
    pummelhit = 0
    pummelfinish = 0
}
if (gumbobpropellercooldown > 0)
    gumbobpropellercooldown--
if (global.starrmode == 1)
{
    if (global.starrmode == 1 && state == (70 << 0))
        movespeed = 12
    else if (state == (70 << 0) && movespeed > 12)
        movespeed = 12
}
if (state == (77 << 0) || place_meeting(x, y, obj_hallway) || state == (61 << 0))
    global.roomsave = 0
if (Dashpad_buffer > 0)
    Dashpad_buffer = max((Dashpad_buffer - 1), 0)
if (sprite_index == spr_player_machpunch1 && floor(image_index) == (image_number - 1))
    sprite_index = spr_mach2
if (sprite_index == spr_player_machpunch2 && floor(image_index) == (image_number - 1))
    sprite_index = spr_mach2
if (global.combo > global.highestcombo)
    global.highestcombo = global.combo
if (palettewave == 1)
    paletteselect = wave(1, (sprite_get_width(spr_palette) - 1), 0, 1)
if (surface_exists(surf_pallete) && paletteselect >= (sprite_get_width(spr_palette) - 1))
    custompalette = 1
else if (paletteselect < (sprite_get_width(spr_palette) - 1))
    custompalette = 0
if (state != (115 << 0) && state != (0 << 0))
    inhalestrength = 0
if (kungaircount == 1)
    kungairtime += 1
if (state != (106 << 0) && state != (0 << 0))
{
    kungaircount = 0
    kungairtime = 0
}
var _cTitle = floor((global.combo / 5))
_cTitle = clamp(_cTitle, 0, (sprite_get_number(spr_combotitles) - 1))
if (oldComboTitle != _cTitle && _cTitle != 0)
{
    oldComboTitle = _cTitle
    instance_destroy(combo_title)
    combo_title = noone
    combo_title = instance_create(830, 250, obj_combotitle)
    combo_title.title = _cTitle
    combo_title.image_index = _cTitle
}
if (!ds_list_empty(sour_buddies))
{
    var _size = ds_list_size(sour_buddies)
    var sourreduction = (1 + (_size / 15))
    if (vsp < 0 && grounded)
        vsp /= sourreduction
    hsp /= sourreduction
    if (sour_buddies_timer > 0)
        sour_buddies_timer--
    else if (key_jump || key_slap2 || key_right2 || key_left2 || key_attack2 || state == (70 << 0))
    {
        var _range = irandom_range(0, _size)
        ds_list_delete(sour_buddies, _range)
        sour_buddies_timer = irandom_range(5, 25)
    }
}
if (state != (124 << 0))
    ufomaxspeed = 0
if (obj_player.state != (144 << 0) && obj_player.state != (145 << 0) && obj_player.state != (146 << 0))
    additionalspeedvar = 0
if keyboard_check_pressed(vk_pageup)
    patternnumb += 1
if keyboard_check_pressed(vk_pagedown)
    patternnumb -= 1
patternnumb %= 2
patternspr = asset_get_index(("spr_pattern" + string(patternnumb)))
