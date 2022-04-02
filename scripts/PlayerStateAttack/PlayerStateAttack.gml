function PlayerStateAttack(){
	hsp = 0;
	vsp = 0;
	
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
	
	var hitbox = instance_create_depth(hitboxX, hitboxY, depth, oHitBox);
	hitbox.creator = id; 
	hitbox.damage = 10;

	if (!keyAttack)
	{
		state = PlayerStateFree;
	}
}