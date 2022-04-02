// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyStateAttack(){
	speed = 0;
	
	//close_dist
	#region
	
	#endregion
	
	//Anim
	EnemyAnimate();
	
	//End
	if (image_index >= image_number - 1) {
		state = EnemyStateFree;
	}
}