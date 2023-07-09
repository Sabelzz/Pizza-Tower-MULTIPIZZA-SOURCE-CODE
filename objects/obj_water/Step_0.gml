if (place_meeting(x, y - 1, obj_player))
{
	with (obj_player)
	{
		if (state != states.gotoplayer && state != states.trashjump && state != states.trashjumpprep && state != states.mach3 && state != states.parry && sprite_index != spr_mach3boost && !((state == states.ratmount or state == states.ratmountjump) && ratmount_movespeed >= 12))
		{
			if (place_meeting(x, y + 1, other))
			{
				if (state != states.trashroll)
				{
					fmod_event_one_shot("event:/sfx/misc/watersplash");
					scr_losepoints();
					sprite_index = spr_scaredjump1;
					image_index = 0;
					image_speed = 0.35;
					state = states.fireass;
					movespeed = hsp;
					vsp = -14;
					instance_create(x, y + 20, obj_piranneapplewater);
					with (instance_create(x, y, obj_superdashcloud))
						sprite_index = spr_watereffect;
				}
				else
				{
					vsp = -6;
					sprite_index = spr_player_jumpdive1;
					image_index = 0;
				}
			}
		}
	}
}
with (instance_place(x, y - 1, obj_baddie))
	instance_destroy();
