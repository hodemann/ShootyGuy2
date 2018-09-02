/// @description Take hp from enemy
hitEnemy = 1
with (other)
{
	hp -= 0.5	
	flash = 3;
	hitfrom = other.direction;
}

instance_destroy();