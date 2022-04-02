function PlayerStateFree(){
	//Sprint
	if (keySprint)  {moveSpeed = 4; image_speed = 1;}
	else moveSpeed = 2.5;
	
	//Movement | Передвижение 
	hsp = lengthdir_x(inputMagnitude * moveSpeed, inputDirection); //Вычисляем горизонтальную скорость (Сколько пикселей в каком направлении)
	vsp = lengthdir_y(inputMagnitude * moveSpeed, inputDirection); //Вычисляем вертикальную скорость (Сколько пикселей в каком направлении)
	
	//Коллизия
	PlayerCollision();
	
	//Shadow
	oPlayerShadow.x = x;
	oPlayerShadow.y = y + 6;
	
	//Animations
	PlayerAnimation();
	
	//Sounds
	if ((hsp != 0 or vsp != 0) and soundRunDelay < 0) {
		audio_play_sound(choose(sRock1, sRock2, sRock3, sRock4, sRock5, sRock6), 2, false);
		soundRunDelay = 20;
	}
	soundRunDelay--;
	
	//Jump
	if (keyJump) {
		jump = 10;
		state = PlayerStateJump;
	}
	
	//Attack
	if (keyAttack) {
		state = PlayerStateAttack;
	}
}