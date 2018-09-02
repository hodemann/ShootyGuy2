/// @description GUI/Vars/Menu setup
#macro SAVEFILE "save.sav"

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width+200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; //lower is faster
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

menu[2] = "Nytt spill";
menu[1] = "Forsett";
menu[0] = "Avslutt";

menu_items = array_length_1d(menu);
menu_cursor = 2;

title_delay = 150;
draw_title = false;
title_text = "Shooty guy";
title_placement = gui_height - 550;