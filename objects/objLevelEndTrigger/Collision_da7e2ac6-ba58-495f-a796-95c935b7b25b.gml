/// @description Move to next room

with (objPlayer)
{

	if (hascontrol) and (!instance_exists(objEnemy)) 
	{
		hascontrol = false
		scrSlideTransition(TRANS_MODE.NEXT);
	}
}
