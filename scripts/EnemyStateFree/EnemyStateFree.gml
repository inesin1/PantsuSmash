// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyStateFree(){
	//close_dist
	#region
	if (dist == DIST.CLOSE) {
		//Направление
		direction = point_direction(x, y, oPlayer.x, oPlayer.y);
	
		//Идет к игроку до тех пор пока не будет находиться слишком близко
		if (!point_in_circle(x, y, oPlayer.x, oPlayer.y, 20)) {
			speed = moveSpeed;
		} else {
			state = EnemyStateAttack;
		}
	}
	#endregion
	
	//middle_dist
	
	//long_dist
	
	
	
	//Anim
	EnemyAnimate();
}