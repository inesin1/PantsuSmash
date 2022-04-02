// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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
	
	//Stop jump
	if (collision_circle(x, y, 5, oPlayerShadow, false, true)) {
		state = PlayerStateFree;
	}
}