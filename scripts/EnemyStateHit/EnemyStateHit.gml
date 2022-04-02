// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyStateHit(){
	//Damage
	if (isDamaged == false) {
		hp -= damage;
		attackDelay = 20;
		isDamaged = true;
	}
	
	//Anim
	EnemyAnimate();
	
	//End hit
	if (image_index >= image_number - 1) {
		state = EnemyStateFree;
	}
}