if (type == "Fragile")
    grabbedspr = 1591
if (type == "Heavy")
{
    grabbedspr = 1221
    grav2 = 0.7
}
if (room == sucrose_6 || room == sucrose_6_1 || room == sucrose_7 || room == sucrose_8)
{
    color_index = 1
    color = 
    {
        light: 7490854,
        dark: 0
    }

}
if (content != noone)
{
    contentspr = object_get_sprite(content)
    if (contentspr == 18)
        contentspr = choose(18, 642, 85, 927, 1708, 1533)
}
if (ds_list_find_index(global.saveroom, id) != -1)
    instance_destroy()
