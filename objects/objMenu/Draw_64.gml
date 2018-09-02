/// @description Draw menu

draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_font(fTitle)
if (draw_title)
{

	var title_offset = 2;
	draw_set_color(c_black)
	draw_text(100,title_placement-offset,title_text);
	draw_text(100-offset,title_placement,title_text);
	draw_text(100,title_placement+offset,title_text);
	draw_text(100+offset,title_placement,title_text);
	
	draw_set_color(c_white);
	draw_text(100,title_placement, title_text)

	if (!instance_exists(objEnemyDead))
	{
		instance_create_layer(350, title_placement, "Instances", objEnemyDead)
		with objEnemyDead 
		{
		image_yscale = 5;
		image_xscale = 5;
		vsp = 6;
		hsp = 6;
		}
	}
	}
else if (title_delay <= 50)	
{
	draw_set_color(c_white); 
	draw_set_font(fMenu)
	draw_text(100,gui_height - 550,"HodePower presenterer: 1")
}
else if (title_delay <= 100)	
{
	draw_set_color(c_white); 
	draw_set_font(fMenu)
	draw_text(100,gui_height - 550,"HodePower presenterer: 2")
}
else
{
	draw_set_color(c_white); 
	draw_set_font(fMenu)
	draw_text(100,gui_height - 550,"HodePower presenterer: 3")
}



draw_set_font(fMenu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for (var i = 0; i < menu_items; i++;)
{

	offset = 2;
	var txt = menu[i];
	if (menu_cursor == i)
	{
		txt = string_insert("> ", txt, 0);
		var col = c_white;
		
	}
	else
	{
		var col = c_gray;
		
	}
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i * 1.5));
	draw_set_color(c_black);
	
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy+offset,txt);
	draw_text(xx,yy-offset,txt);
	draw_set_color(col);
	draw_text(xx,yy,txt)
	
}
