/// @description Control Menu

title_delay --;
if title_delay == 0
{
audio_play_sound(sndIntroMusic, 1, false);
draw_title = true;
}

//Item ease in
if (title_delay <= 10)
{
menu_x += (menu_x_target - menu_x) / menu_speed;
}

//Keyboard Control
if (menu_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
		if (keyboard_check_pressed(vk_down))
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items-1;
	}
	if (keyboard_check_pressed(vk_enter))
	{
		
		menu_x_target = gui_width+200
		menu_committed = menu_cursor;
		menu_control = false
		audio_play_sound(sndDead,10,false)
	}
	
}

if (menu_x > gui_width+150) and (menu_committed != -1)
{
	audio_stop_all();
	switch (menu_committed)
	{
		case 2: scrSlideTransition(TRANS_MODE.NEXT); break;
		case 1:
		{
			if (!file_exists(SAVEFILE))
			{
				scrSlideTransition(TRANS_MODE.NEXT);
			}
			else
			{
				scrLoadgame()
				scrSlideTransition(TRANS_MODE.GOTO, LoadedRoom)
				//Manual loading
				//var file = file_text_open_read(SAVEFILE);
				//var target = file_text_read_real(file);
				//file_text_close(file)
				//scrSlideTransition(TRANS_MODE.GOTO, target, scrSlideTransition)
			}
			
		}
		break;
		case 0: game_end(); break;
		
	}
	
}