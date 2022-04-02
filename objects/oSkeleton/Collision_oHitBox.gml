if (other.creator == oPlayer.id)
{
	if (attackDelay <= 0) {
		hp -= other.damage;
		flash = 10;
		attackDelay = 10;
		if (hp <= 0)
		{
			instance_destroy();
		}
		instance_destroy(other);
	}
}