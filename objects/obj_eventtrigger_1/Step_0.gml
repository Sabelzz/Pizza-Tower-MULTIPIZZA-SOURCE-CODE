if (condition != -4 && self.condition())
{
    if (activated == 0 || flags.do_once == 0)
    {
        self.output()
        if (flags.do_save == 1 && ds_list_find_index(flags.saveroom, id) == -1)
            ds_list_add(flags.saveroom, id)
        activated = 1
    }
}
else if (reverse_output != -4 && condition != -4 && (!self.condition()))
{
    if (activated == 1 || flags.do_once == 0)
    {
        self.reverse_output()
        activated = 0
    }
}
if (activated == 1 && flags.do_once == 1)
    instance_destroy()
