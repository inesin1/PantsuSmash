function PlayerStateAttack(){
	hsp = 0;
	vsp = 0;
	
	//Anim
	sprite_index = sPlayer2_Attack;
	image_speed = 1;
	
	var playerCenterX = x + sprite_width / 4;
	var playerCenterY = y - sprite_height / 2;
	
	if (image_xscale == -1) {
		var dir = 180;
		var len = -8;
	}
	if (image_xscale == 1) {
		var dir = 0;
		var len = 20;
	}
	
	var hitboxX = lengthdir_x(len, dir) + playerCenterX;
	var hitboxY = lengthdir_y(len, dir) + playerCenterY;
	
	if (!isHitboxCreated) {
		hitbox = instance_create_layer(hitboxX, hitboxY, "Hitbox", oHitBox);
		hitbox.creator = id; 
		hitbox.damage = 10;
		isHitboxCreated = true;
	}

	if (image_index >= image_number - 1)
	{
		instance_destroy(hitbox.id);
		state = PlayerStateFree;
	}
}