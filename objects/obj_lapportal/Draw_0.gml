if (sprite_index != spr_pizzaportal)
{
    shader_set(global.Pal_Shader)
    pattern_set(global.Base_Pattern_Color, sprite_index, image_index, image_xscale, image_yscale, global.palettetexture)
    pal_swap_set(obj_player1.spr_palette, obj_player1.paletteselect, false);
    draw_self()
    pattern_reset()
    shader_reset()
}
else if (global.laps >= 3)
    draw_self()
else if (global.laps == 2)
{
    draw_self()
    draw_sprite(spr_lap4warning, 0, x, (y + Wave(-5, 5, 0.5, 5)))
}
else if (global.laps == 1)
{
    draw_self()
    draw_sprite(spr_lap3warning, 0, x, (y + Wave(-5, 5, 0.5, 5)))
}
else
{
    draw_self()
    draw_sprite(spr_lap2warning, 0, x, (y + Wave(-5, 5, 0.5, 5)))
}
