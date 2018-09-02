x = objPlayer.x;
y = objPlayer.y+2;

image_angle = point_direction(x,y,mouse_x,mouse_y);
if(mouse_x > x) image_yscale = 1; else image_yscale = -1;

firingdelay = firingdelay - 1;
recoil = max(0,recoil - 1)

if (mouse_check_button(mb_left)) and (firingdelay < 0)
{
	audio_sound_pitch(sndGunShoot, choose(0.8,1.0,1.2))
	audio_play_sound(sndGunShoot,5,false)
	recoil = 4
	firingdelay = 10;
	ScreenShake(2,10);
	with (instance_create_layer(x,y,"Bullets",objBullet))
	{
		speed = 25; 
		direction = other.image_angle + random_range(-3,3) 
		image_angle = direction;
	}
} 

x = x - lengthdir_x(recoil, image_angle)
y = y - lengthdir_y(recoil, image_angle)