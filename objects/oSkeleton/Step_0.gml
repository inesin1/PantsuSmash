direction = point_direction(x, y, oPlayer.x, oPlayer.y);

if (!global.isPause) {
	
	attackDelay--;
	
//Intellect
if (!point_in_circle(x, y, oPlayer.x, oPlayer.y, 100)) {
	speed = moveSpeed;
} else {
	speed = 0;
}

//Animation
if (speed != 0) {
	sprite_index = sSkeleton_Walk;
} else {
	sprite_index = sSkeleton_Idle;
}

if (direction < 90 || direction > 270) image_xscale = 1;
else image_xscale = -1;




} else speed = 0;