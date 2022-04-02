function PlayerStateJump(){
	//Movement | Передвижение 
	hsp = lengthdir_x(inputMagnitude * moveSpeed, inputDirection); //Вычисляем горизонтальную скорость (Сколько пикселей в каком направлении)
	vsp = lengthdir_y(inputMagnitude * moveSpeed, inputDirection); //Вычисляем вертикальную скорость (Сколько пикселей в каком направлении)
	
	//Коллизия
	PlayerCollision();
	
	//Shadow
	oPlayerShadow.x = x;
	oPlayerShadow.y += vsp;
	
	//Jump
	y -= jump;
	jump -= 0.5;
	
	//Anim
	sprite_index = sPlayer2_Jump;
	image_speed = 0;
	
	//Stop jump
	if (collision_circle(x, y, 5, oPlayerShadow, false, true)) {
		state = PlayerStateFree;
	}
}