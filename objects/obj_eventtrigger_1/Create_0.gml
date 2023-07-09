inst_num = instance_number(obj_eventtrigger)
condition = -4
output = -4
reverse_output = -4
function reverse_output() //gml_Script_anon_gml_Object_obj_eventtrigger_Create_0_215_gml_Object_obj_eventtrigger_Create_0
{
    return place_meeting(x, y, obj_player);
}

function reverse_output() //gml_Script_anon_gml_Object_obj_eventtrigger_Create_0_313_gml_Object_obj_eventtrigger_Create_0
{
    show_debug_message((("Event Trigger:" + string(id)) + " - Has missing Output"))
}

flags = 
{
    do_once: 1,
    do_save: 1,
    do_once_per_save: 0,
    saveroom: global.saveroom
}

activated = 0
condition = default_condition
output = default_output
reverse_output = -4
