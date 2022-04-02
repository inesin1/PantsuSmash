function PlayerAnimation(){
	//Run
	if (state == PlayerStateFree) {
		if (sign(hsp) != 0 || sign(vsp) != 0) {
			sprite_index = sPlayer2_Run;
			image_speed = 0.7;
		} else {
			image_speed = 1;
			sprite_index = sPlayer2_Idle;
		}
		
		if (sign(hsp) != 0) image_xscale = sign(hsp);
	}
	
	//Jump
	if (state == PlayerStateJump) {
//		sprite_index = sPlayer2_Jump;
	}
}