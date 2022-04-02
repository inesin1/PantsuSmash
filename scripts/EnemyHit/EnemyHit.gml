/*// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyHit()
{
	var damage = argument0;
	
	global.hp -= damage;
	//flash = true;
	
	if (global.hp > 0)
	{
		state = EnemyState_Hit();
	}
	else
	{
		state = EnemyState_Dead();
	}
}