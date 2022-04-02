if (other.creator == oPlayer.id)
{
	if (attackDelay <= 0) {
		damage = other.damage;
		isDamaged = false;
		image_index = 0;
		state = EnemyStateHit;
		
		//Dead
		if (hp <= 0)
		{
			instance_create_layer(x, y, "Enemies", oSkeletonDead);
			instance_destroy();
		}
	}
}