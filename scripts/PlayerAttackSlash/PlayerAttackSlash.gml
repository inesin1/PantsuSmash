/*// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerAttackSlash()
{
	hsp = 0;
	vsp = 0;
	
	//Старт атаки
	if (sprite_index != sAttackSlash)
	{
		sprite_index = sAttackSlash;
		image_index = 0;
		ds_list_clear(hitbyAttack);
	}
	
	//Использование хитбокса атаки и проверка хита
	mask_index = sAttackSlashHB;
	
	var hitbyAttackNow = ds_list_create();
	var hits = instance_place_list(x, y, oEnemy, hitbyAttackNow, false);
	
	if (hits > 0)
	{
		for (var i = 0; i < hits; i++)
		{
			//Если этот пример еще не подвергся этой атаке
			var hitID = hitbyAttackNow[| i];
			if (ds_list_find_index(hitbyAttack, hitID) == -1)
			{
				ds_list_add(hitbyAttack, hitID);
				with (hitID)
				{
					EnemyHit();
				}
			}
		}
	}
	
	ds_list_destroy(hitbyAttackNow);
	mask_index = sPlayer;
	
	if (animation_end())
	{
		sprite_index = sPlayer;
		state = PlayerStateFree;
	}
}