if ((global.panic == 1 && panicmode == 1) || panicmode == 0)
{
    if (ds_list_find_index(global.saveroom, id) == -1 && _message != -4 && can_activate == 1 && activated == 0)
    {
        with (obj_tvtexttrigger)
        {
            if (trigger == other.trigger)
                can_activate = 1
        }
        activated = 1
        scr_queue_message(_message, _message_tvspr)
        ds_list_add(global.saveroom, id)
        instance_destroy()
    }
    if (ds_list_find_index(global.saveroom, id) == -1 && _message_array[0][0] != -4 && can_activate == 1 && activated == 0)
    {
        with (obj_tvtexttrigger)
        {
            if (trigger == other.trigger)
                can_activate = 1
        }
        activated = 1
        for (var i = 0; i < array_length(_message_array); i++)
        {
            if (array_length(_message_array[i]) > 1)
                scr_queue_message(_message_array[i][0], _message_array[i][1])
            else
                scr_queue_message(_message_array[i][0])
        }
        ds_list_add(global.saveroom, id)
        instance_destroy()
    }
}
