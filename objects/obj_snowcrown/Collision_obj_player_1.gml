scr_sound(123)
obj_tv.message = "YOU GOT A HAT!"
obj_tv.showtext = 1
obj_tv.alarm[0] = 200
ini_open("saveData.ini")
ini_write_real("HatsUnlock", "SnowCrown", 1)
ini_close()
instance_destroy()
