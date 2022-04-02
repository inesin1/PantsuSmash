// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyAnimate(){
	//Skeleton
	#region
	if (enemy == ENEMIES.SKELETON) {
		//Свободное движение
		if (state == EnemyStateFree) {
			if (speed != 0) {
				sprite_index = sSkeleton_Walk;
			} else {
				sprite_index = sSkeleton_Idle;
			}

			if (direction < 90 || direction > 270) image_xscale = 1;
			else image_xscale = -1;
		}
		
		//Дамаг
		if (state == EnemyStateHit) {
			sprite_index = sSkeleton_Hit;
			image_speed = 1;
		}
		
		//Атака
		if (state == EnemyStateAttack) {
			sprite_index = sSkeleton_Attack;
			image_speed = 1;
		}
	}
	#endregion
}