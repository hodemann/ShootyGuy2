//Get player Input
if (hascontrol)
{
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D")); 
	key_jump = keyboard_check(vk_space) or keyboard_check(ord("W"));;

	//Calculate Movement
	var move = key_right - key_left

	hsp = move * walksp

	vsp = vsp + grv;

	if (place_meeting(x,y+1,objWall)) and (key_jump)
	{
		vsp = -7;
	}
}
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}

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
	while (!place_meeting(x,y+sign(vsp),objWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,objWall))
{
	sprite_index = sprPlayerJ;
	image_speed = 0
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
	
	
}
else
{
	if (sprite_index = sprPlayerJ)
	{
	audio_sound_pitch(sndLanding, choose(0.8,1.0,1.2))
	audio_play_sound(sndLanding, 4, false);

	}
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sprPlayer;
		
	}
	else
	{
		sprite_index = sprPlayerR
	}

}


if (hsp != 0) image_xscale = sign(hsp);