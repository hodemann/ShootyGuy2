/// @description Draw black bars


if (mode != TRANS_MODE.OFF)
{
	draw_set_color(c_black);
	draw_rectangle(0,0,w,percent*hHalf,false);
	draw_rectangle(0,h,w,h-(percent*hHalf),false);
}



DrawSetText(c_black, fSign, fa_left, fa_center)

//draw_set_color(c_white);
//draw_text(50,50,string(percent))
