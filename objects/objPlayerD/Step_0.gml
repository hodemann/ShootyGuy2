if (done == 0)
{
	vsp = vsp + grv;

	//Horizontal Collision
	if (place_meeting(x+hsp,y,objWall))
	{
		while (!place_meeting(x+sign(hsp),y,objWall))
		{
			x = x + sign(hsp)
		}
		hsp = 0;
	}
	x = x + hsp;


	//Vertical Collision
	if (place_meeting(x,y+vsp,objWall))
	{
		if (vsp > 0) 
		{
			done = 1;
			image_index = 1;
			alarm[0] = 60;
		}
		while (!place_meeting(x,y+sign(vsp),objWall))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp;
}